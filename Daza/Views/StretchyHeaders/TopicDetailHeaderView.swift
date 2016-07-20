/**
 * Copyright (C) 2015 JianyingLi <lijy91@foxmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import UIKit
import GSKStretchyHeaderView

class TopicDetailHeaderView: GSKStretchyHeaderView {
    
    class func instanceFromNib() -> TopicDetailHeaderView {
        return UINib(nibName: "TopicDetailHeaderView", bundle: nil).instantiateWithOwner(nil, options: nil)[0] as! TopicDetailHeaderView
    }
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subscribeButton: UIButton!
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var subscriberCountButton: UIButton!
    
    var topic: Topic?
    
    var data: Topic {
        get {
            return self.topic!
        }
        set(newValue) {
            self.topic = newValue
            self.nameLabel.text = topic!.name
            self.descriptionLabel.text = topic!.description!
            self.coverImageView.sd_setImageWithURL(NSURL(string: (topic!.image_url)!), placeholderImage: UIImage(named: "placeholder_image"))
        }
    }


}