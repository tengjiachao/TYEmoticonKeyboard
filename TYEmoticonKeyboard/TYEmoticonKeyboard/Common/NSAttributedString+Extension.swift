//
//  NSAttributedString+Extension.swift
//  TYEmoticonKeyboard
//
//  Created by thomasTY on 15/11/10.
//  Copyright © 2015年 滕佳超. All rights reserved.
//

import UIKit

extension NSAttributedString
{
    //根据表情模型创建表情富文本
    class func attributedStringWithEmoticon(emoticon: Emoticon, font: UIFont) -> NSAttributedString
    {
        let image = UIImage(named: emoticon.fullPath!)
        let attachment = TextAttachment()
        attachment.image = image
        attachment.emoticon = emoticon
        let fontHeight = font.lineHeight
        attachment.bounds = CGRect(x: 0, y: -3, width: fontHeight, height: fontHeight)
        let attributedString = NSAttributedString(attachment: attachment)
        
        return attributedString
    }
}
