cask 'max' do
  version '0.9.2b4'
  sha256 '4d3d96f2e3fc2f52fc3c7cbeb260be749975665e38f643089d2e3fdb58b8f82b'

  url 'https://files.sbooth.org/Max-0.9.2b4.dmg'
  name 'Max'
  desc 'Max is an application for creating high-quality audio files in various formats, from compact discs or files.'
  homepage 'https://github.com/sbooth/Max'

  app 'Max.app'

  # Optional: Cleanup steps to perform when uninstalling
  uninstall delete: '/Applications/Max.app'
end
