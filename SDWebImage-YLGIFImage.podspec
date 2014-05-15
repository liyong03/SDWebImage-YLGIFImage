Pod::Spec.new do |s|
  s.name         = "SDWebImage-YLGIFImage"
  s.version      = "0.2"
  s.summary      = "Make SDWebImage support decoding GIF image using YLGIFImage."
  s.homepage     = "https://github.com/liyong03/SDWebImage-YLGIFImage.git"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "liyong03" => "liyong03@gmail.com" }
  s.source       = { :git => "https://github.com/liyong03/SDWebImage-YLGIFImage.git", :tag => s.version.to_s }
  s.platform     = :ios, '6.0'
  s.source_files =  'SDWebImage+YLGIFImage'
  s.frameworks   = 'Foundation', 'UIKit', 'MobileCoreServices', 'ImageIO', 'CoreGraphics'
  s.requires_arc = true
end
