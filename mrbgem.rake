MRuby::Gem::Specification.new('mruby-thread') do |spec|
  spec.license = 'MIT'
  spec.authors = 'mattn'

  if build.toolchains.include?('android')
    spec.cc.defines << 'HAVE_PTHREADS'
  else
    spec.linker.flags << '-pthread'
  end
end
