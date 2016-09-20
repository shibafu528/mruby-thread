MRuby::Gem::Specification.new('mruby-thread') do |spec|
  spec.license = 'MIT'
  spec.authors = 'mattn'
  
  # Uncomment for copying instances on Thread::new()
  # spec.cc.flags << "-DMRB_THREAD_COPY_VALUES"
  
  if build.toolchains.include?("android")
    spec.cc.flags << '-DHAVE_PTHREADS'
  else
    spec.linker.libraries << ['pthread']
  end
end
