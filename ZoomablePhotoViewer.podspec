Pod::Spec.new do |s|

  s.name = 'ZoomablePhotoViewer'
  s.version = '2.1.2'
  s.license = 'MIT'
  s.summary = 'A photo viewer without any toolbars or buttons.'

  s.homepage = 'https://github.com/Simbioz/ZoomablePhotoViewer'
  s.author = {
    'Michael Waterfall' => 'michaelwaterfall@gmail.com',
    'Michael Fortin' => 'michael@simbioz.com'
  }

  s.source = {
    :git => 'https://github.com/Simbioz/ZoomablePhotoViewer',
    :tag => '2.1.2'
  }
  s.platform = :ios, '7.0'
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MWPhotoBrowser' => ['Pod/Assets/*.png']
  }
  s.requires_arc = true

  s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'
  s.weak_frameworks = 'Photos'

  s.dependency 'MBProgressHUD', '~> 0.9'
  s.dependency 'DACircularProgress', '~> 2.3'

  # SDWebImage
  # 3.7.2 contains bugs downloading local files
  # https://github.com/rs/SDWebImage/issues/1109
  s.dependency 'SDWebImage', '~> 3.7', '!= 3.7.2'

end
