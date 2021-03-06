//
//  R.Generated.swift
//  OpenEys
//
//  Created by llk on 16/12/9.
//  Copyright © 2016年 llk. All rights reserved.
//

import Foundation
import Rswift
struct R {
    /// This `R.color` struct is generated, and contains static references to 0 color palettes.
    struct color {
        private init() {}
    }
    
    struct file {
        /// Resource file `FZLTXIHJW--GB1-0.TTF`.
        static let fZLTXIHJWGB10TTF = FileResource(bundle: _R.hostingBundle, name: "FZLTXIHJW--GB1-0", pathExtension: "TTF")
        /// Resource file `FZLTZCHJW--GB1-0.TTF`.
        static let fZLTZCHJWGB10TTF = FileResource(bundle: _R.hostingBundle, name: "FZLTZCHJW--GB1-0", pathExtension: "TTF")
        /// Resource file `ic_menu@3x.png`.
        static let ic_menu3xPng = FileResource(bundle: _R.hostingBundle, name: "ic_menu@3x", pathExtension: "png")
        /// Resource file `Lobster 1.4.otf`.
        static let lobster14Otf = FileResource(bundle: _R.hostingBundle, name: "Lobster 1.4", pathExtension: "otf")
        
        /// `bundle.URLForResource("FZLTXIHJW--GB1-0", withExtension: "TTF")`
        static func fZLTXIHJWGB10TTF(_: Void) -> NSURL? {
            let fileResource = R.file.fZLTXIHJWGB10TTF
            return fileResource.bundle.url(forResource: fileResource) as NSURL?
        }
        
        /// `bundle.URLForResource("FZLTZCHJW--GB1-0", withExtension: "TTF")`
        static func fZLTZCHJWGB10TTF(_: Void) -> NSURL? {
            let fileResource = R.file.fZLTZCHJWGB10TTF
            return fileResource.bundle.url(forResource: fileResource) as NSURL?
        }
        
        /// `bundle.URLForResource("ic_menu@3x", withExtension: "png")`
        static func ic_menu3xPng(_: Void) -> NSURL? {
            let fileResource = R.file.ic_menu3xPng
            return fileResource.bundle.url(forResource: fileResource) as NSURL?
        }
        
        /// `bundle.URLForResource("Lobster 1.4", withExtension: "otf")`
        static func lobster14Otf(_: Void) -> NSURL? {
            let fileResource = R.file.lobster14Otf
            return fileResource.bundle.url(forResource: fileResource) as NSURL?
        }
        
        private init() {}
    }
    
    /// This `R.font` struct is generated, and contains static references to 3 fonts.
    struct font {
        /// Font `FZLTXIHJW--GB1-0`.
        static let fZLTXIHJWGB10 = FontResource(fontName: "FZLTXIHJW--GB1-0")
        /// Font `FZLTZCHJW--GB1-0`.
        static let fZLTZCHJWGB10 = FontResource(fontName: "FZLTZCHJW--GB1-0")
        /// Font `Lobster1.4`.
        static let lobster14 = FontResource(fontName: "Lobster1.4")
        
        /// `UIFont(name: "FZLTXIHJW--GB1-0", size: ...)`
        static func fZLTXIHJWGB10(size: CGFloat) -> UIFont? {
            return UIFont(resource: fZLTXIHJWGB10, size: size)
        }
        
        /// `UIFont(name: "FZLTZCHJW--GB1-0", size: ...)`
        static func fZLTZCHJWGB10(size: CGFloat) -> UIFont? {
            return UIFont(resource: fZLTZCHJWGB10, size: size)
        }
        
        /// `UIFont(name: "Lobster1.4", size: ...)`
        static func lobster14(size: CGFloat) -> UIFont? {
            return UIFont(resource: lobster14, size: size)
        }
        
        private init() {}
    }
    
    /// This `R.image` struct is generated, and contains static references to 40 images.
    struct image {
        /// Image `action_download_cut`.
        static let action_download_cut = ImageResource(bundle: _R.hostingBundle, name: "action_download_cut")
        /// Image `action_start`.
        static let action_start = ImageResource(bundle: _R.hostingBundle, name: "action_start")
        /// Image `brightness_bg`.
        static let brightness_bg = ImageResource(bundle: _R.hostingBundle, name: "brightness_bg")
        /// Image `7e42a62065ef37cfa233009fb364fd1e_0_0`.
        static let e42a62065ef37cfa233009fb364fd1e_0_0 = ImageResource(bundle: _R.hostingBundle, name: "7e42a62065ef37cfa233009fb364fd1e_0_0")
        /// Image `ic_action_back`.
        static let ic_action_back = ImageResource(bundle: _R.hostingBundle, name: "ic_action_back")
        /// Image `ic_action_favorites_added_without_padding`.
        static let ic_action_favorites_added_without_padding = ImageResource(bundle: _R.hostingBundle, name: "ic_action_favorites_added_without_padding")
        /// Image `ic_action_favorites_without_padding`.
        static let ic_action_favorites_without_padding = ImageResource(bundle: _R.hostingBundle, name: "ic_action_favorites_without_padding")
        /// Image `ic_action_focus`.
        static let ic_action_focus = ImageResource(bundle: _R.hostingBundle, name: "ic_action_focus")
        /// Image `ic_action_focus_white`.
        static let ic_action_focus_white = ImageResource(bundle: _R.hostingBundle, name: "ic_action_focus_white")
        /// Image `ic_action_focus_white_no_margin`.
        static let ic_action_focus_white_no_margin = ImageResource(bundle: _R.hostingBundle, name: "ic_action_focus_white_no_margin")
        /// Image `ic_action_menu`.
        static let ic_action_menu = ImageResource(bundle: _R.hostingBundle, name: "ic_action_menu")
        /// Image `ic_action_menu_down`.
        static let ic_action_menu_down = ImageResource(bundle: _R.hostingBundle, name: "ic_action_menu_down")
        /// Image `ic_action_play`.
        static let ic_action_play = ImageResource(bundle: _R.hostingBundle, name: "ic_action_play")
        /// Image `ic_action_reply_nopadding`.
        static let ic_action_reply_nopadding = ImageResource(bundle: _R.hostingBundle, name: "ic_action_reply_nopadding")
        /// Image `ic_action_share_without_padding`.
        static let ic_action_share_without_padding = ImageResource(bundle: _R.hostingBundle, name: "ic_action_share_without_padding")
        /// Image `ic_action_un_focus`.
        static let ic_action_un_focus = ImageResource(bundle: _R.hostingBundle, name: "ic_action_un_focus")
        /// Image `ic_eye_black_error`.
        static let ic_eye_black_error = ImageResource(bundle: _R.hostingBundle, name: "ic_eye_black_error")
        /// Image `ic_eye_black_inner`.
        static let ic_eye_black_inner = ImageResource(bundle: _R.hostingBundle, name: "ic_eye_black_inner")
        /// Image `ic_eye_black_outer`.
        static let ic_eye_black_outer = ImageResource(bundle: _R.hostingBundle, name: "ic_eye_black_outer")
        /// Image `ic_eye_white`.
        static let ic_eye_white = ImageResource(bundle: _R.hostingBundle, name: "ic_eye_white")
        /// Image `ic_eye_white_error`.
        static let ic_eye_white_error = ImageResource(bundle: _R.hostingBundle, name: "ic_eye_white_error")
        /// Image `ic_eye_white_inner`.
        static let ic_eye_white_inner = ImageResource(bundle: _R.hostingBundle, name: "ic_eye_white_inner")
        /// Image `ic_eye_white_outer`.
        static let ic_eye_white_outer = ImageResource(bundle: _R.hostingBundle, name: "ic_eye_white_outer")
        /// Image `ic_launch_gray`.
        static let ic_launch_gray = ImageResource(bundle: _R.hostingBundle, name: "ic_launch_gray")
        /// Image `ic_launch_white`.
        static let ic_launch_white = ImageResource(bundle: _R.hostingBundle, name: "ic_launch_white")
        /// Image `ic_menu`.
        static let ic_menu = ImageResource(bundle: _R.hostingBundle, name: "ic_menu")
        /// Image `kr-video-player-close`.
        static let krVideoPlayerClose = ImageResource(bundle: _R.hostingBundle, name: "kr-video-player-close")
        /// Image `kr-video-player-fullscreen`.
        static let krVideoPlayerFullscreen = ImageResource(bundle: _R.hostingBundle, name: "kr-video-player-fullscreen")
        /// Image `kr-video-player-pause`.
        static let krVideoPlayerPause = ImageResource(bundle: _R.hostingBundle, name: "kr-video-player-pause")
        /// Image `kr-video-player-play`.
        static let krVideoPlayerPlay = ImageResource(bundle: _R.hostingBundle, name: "kr-video-player-play")
        /// Image `kr-video-player-shrinkscreen`.
        static let krVideoPlayerShrinkscreen = ImageResource(bundle: _R.hostingBundle, name: "kr-video-player-shrinkscreen")
        /// Image `landing_background`.
        static let landing_background = ImageResource(bundle: _R.hostingBundle, name: "landing_background")
        /// Image `lock-nor`.
        static let lockNor = ImageResource(bundle: _R.hostingBundle, name: "lock-nor")
        /// Image `Management_Mask`.
        static let management_Mask = ImageResource(bundle: _R.hostingBundle, name: "Management_Mask")
        /// Image `play_back_full`.
        static let play_back_full = ImageResource(bundle: _R.hostingBundle, name: "play_back_full")
        /// Image `playgesture_BrightnessSun6`.
        static let playgesture_BrightnessSun6 = ImageResource(bundle: _R.hostingBundle, name: "playgesture_BrightnessSun6")
        /// Image `repeat_video`.
        static let repeat_video = ImageResource(bundle: _R.hostingBundle, name: "repeat_video")
        /// Image `share_watermark`.
        static let share_watermark = ImageResource(bundle: _R.hostingBundle, name: "share_watermark")
        /// Image `slider`.
        static let slider = ImageResource(bundle: _R.hostingBundle, name: "slider")
        /// Image `unlock-nor`.
        static let unlockNor = ImageResource(bundle: _R.hostingBundle, name: "unlock-nor")
        
        static func action_download_cut(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.action_download_cut, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "action_start", bundle: ..., traitCollection: ...)`
        static func action_start(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.action_start, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "brightness_bg", bundle: ..., traitCollection: ...)`
        static func brightness_bg(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.brightness_bg, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "7e42a62065ef37cfa233009fb364fd1e_0_0", bundle: ..., traitCollection: ...)`
        static func e42a62065ef37cfa233009fb364fd1e_0_0(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.e42a62065ef37cfa233009fb364fd1e_0_0, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_back", bundle: ..., traitCollection: ...)`
        static func ic_action_back(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_back, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_favorites_added_without_padding", bundle: ..., traitCollection: ...)`
        static func ic_action_favorites_added_without_padding(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_favorites_added_without_padding, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_favorites_without_padding", bundle: ..., traitCollection: ...)`
        static func ic_action_favorites_without_padding(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_favorites_without_padding, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_focus", bundle: ..., traitCollection: ...)`
        static func ic_action_focus(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_focus, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_focus_white", bundle: ..., traitCollection: ...)`
        static func ic_action_focus_white(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_focus_white, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_focus_white_no_margin", bundle: ..., traitCollection: ...)`
        static func ic_action_focus_white_no_margin(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_focus_white_no_margin, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_menu", bundle: ..., traitCollection: ...)`
        static func ic_action_menu(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_menu, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_menu_down", bundle: ..., traitCollection: ...)`
        static func ic_action_menu_down(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_menu_down, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_play", bundle: ..., traitCollection: ...)`
        static func ic_action_play(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_play, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_reply_nopadding", bundle: ..., traitCollection: ...)`
        static func ic_action_reply_nopadding(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_reply_nopadding, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_share_without_padding", bundle: ..., traitCollection: ...)`
        static func ic_action_share_without_padding(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_share_without_padding, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_action_un_focus", bundle: ..., traitCollection: ...)`
        static func ic_action_un_focus(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_action_un_focus, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_eye_black_error", bundle: ..., traitCollection: ...)`
        static func ic_eye_black_error(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_eye_black_error, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_eye_black_inner", bundle: ..., traitCollection: ...)`
        static func ic_eye_black_inner(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_eye_black_inner, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_eye_black_outer", bundle: ..., traitCollection: ...)`
        static func ic_eye_black_outer(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_eye_black_outer, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_eye_white", bundle: ..., traitCollection: ...)`
        static func ic_eye_white(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_eye_white, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_eye_white_error", bundle: ..., traitCollection: ...)`
        static func ic_eye_white_error(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_eye_white_error, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_eye_white_inner", bundle: ..., traitCollection: ...)`
        static func ic_eye_white_inner(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_eye_white_inner, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_eye_white_outer", bundle: ..., traitCollection: ...)`
        static func ic_eye_white_outer(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_eye_white_outer, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_launch_gray", bundle: ..., traitCollection: ...)`
        static func ic_launch_gray(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_launch_gray, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_launch_white", bundle: ..., traitCollection: ...)`
        static func ic_launch_white(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_launch_white, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "ic_menu", bundle: ..., traitCollection: ...)`
        static func ic_menu(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.ic_menu, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "kr-video-player-close", bundle: ..., traitCollection: ...)`
        static func krVideoPlayerClose(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.krVideoPlayerClose, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "kr-video-player-fullscreen", bundle: ..., traitCollection: ...)`
        static func krVideoPlayerFullscreen(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.krVideoPlayerFullscreen, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "kr-video-player-pause", bundle: ..., traitCollection: ...)`
        static func krVideoPlayerPause(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.krVideoPlayerPause, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "kr-video-player-play", bundle: ..., traitCollection: ...)`
        static func krVideoPlayerPlay(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.krVideoPlayerPlay, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "kr-video-player-shrinkscreen", bundle: ..., traitCollection: ...)`
        static func krVideoPlayerShrinkscreen(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.krVideoPlayerShrinkscreen, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "landing_background", bundle: ..., traitCollection: ...)`
        static func landing_background(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.landing_background, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "lock-nor", bundle: ..., traitCollection: ...)`
        static func lockNor(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.lockNor, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "Management_Mask", bundle: ..., traitCollection: ...)`
        static func management_Mask(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.management_Mask, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "play_back_full", bundle: ..., traitCollection: ...)`
        static func play_back_full(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.play_back_full, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "playgesture_BrightnessSun6", bundle: ..., traitCollection: ...)`
        static func playgesture_BrightnessSun6(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.playgesture_BrightnessSun6, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "repeat_video", bundle: ..., traitCollection: ...)`
        static func repeat_video(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.repeat_video, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "share_watermark", bundle: ..., traitCollection: ...)`
        static func share_watermark(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.share_watermark, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "slider", bundle: ..., traitCollection: ...)`
        static func slider(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.slider, compatibleWith: traitCollection)
        }
        
        /// `UIImage(named: "unlock-nor", bundle: ..., traitCollection: ...)`
        static func unlockNor(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
            return UIImage(resource: R.image.unlockNor, compatibleWith: traitCollection)
        }
        private init() {}
    }
    
    /// This `R.nib` struct is generated, and contains static references to 3 nibs.
    struct nib {
        /// Nib `LaunchView`.
        static let launchView = _R.nib._LaunchView.self
        /// Nib `MainTabView`.
        static let mainTabView = _R.nib._MainTabView.self
        /// Nib `PlayerView`.
        static let playerView = _R.nib._PlayerView.self
        
        /// `UINib(name: "LaunchView", bundle: ...)`
        static func launchView(_: Void) -> UINib {
            return UINib(resource: R.nib.launchView as! NibResourceType)
        }
        
        /// `UINib(name: "MainTabView", bundle: ...)`
        static func mainTabView(_: Void) -> UINib {
            return UINib(resource: R.nib.mainTabView as! NibResourceType)
        }
        
        /// `UINib(name: "PlayerView", bundle: ...)`
        static func playerView(_: Void) -> UINib {
            return UINib(resource: R.nib.playerView as! NibResourceType)
        }
        
        private init() {}
    }
    
    /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
    struct reuseIdentifier {
        private init() {}
    }
    
    /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
    struct segue {
        private init() {}
    }
    
    /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
    struct storyboard {
        /// Storyboard `LaunchScreen`.
        static let launchScreen = _R.storyboard.launchScreen.self
        /// Storyboard `Main`.
        static let main = _R.storyboard.main.self
        
        /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
        static func launchScreen(_: Void) -> UIStoryboard {
            return UIStoryboard(resource: R.storyboard.launchScreen as! StoryboardResourceType)
        }
        
        /// `UIStoryboard(name: "Main", bundle: ...)`
        static func main(_: Void) -> UIStoryboard {
            return UIStoryboard(resource: R.storyboard.main as! StoryboardResourceType)
        }
        
        private init() {}
    }
    
    /// This `R.string` struct is generated, and contains static references to 0 localization tables.
    struct string {
        private init() {}
    }
    
    private init() {}
}

struct _R {
    //static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(NSLocale.init) ?? NSLocale.currentLocale()
    static let hostingBundle = Bundle(identifier: "OpenEys.OpenEys") ?? Bundle.main
    
    struct nib {
        struct _LaunchView: NibResourceType {
            let bundle = _R.hostingBundle
            let name = "LaunchView"
            
            func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> LaunchView? {
                return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? LaunchView
            }
            
            private init() {}
        }
        
        struct _MainTabView: NibResourceType {
            let bundle = _R.hostingBundle
            let name = "MainTabView"
            
            func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> MainTabView? {
                return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MainTabView
            }
            
            private init() {}
        }
        
        struct _PlayerView: NibResourceType {
            let bundle = _R.hostingBundle
            let name = "PlayerView"
            
            func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> PlayerView? {
                return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? PlayerView
            }
            
            private init() {}
        }
        
        private init() {}
    }
    
    struct storyboard {
        struct launchScreen: StoryboardResourceWithInitialControllerType {
            typealias InitialController = UIViewController
            
            let bundle = _R.hostingBundle
            let name = "LaunchScreen"
            
            private init() {}
        }
        
        struct main: StoryboardResourceType {
            let bundle = _R.hostingBundle
            let name = "Main"
            
            private init() {}
        }
        
        private init() {}
    }
    
    private init() {}
}
