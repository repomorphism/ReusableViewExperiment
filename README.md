# ReusableViewExperiment

## 問題

假設有一個複雜、想重覆利用的 UIView subclass。如果用 xib 來設定該 view，一般會寫 code 來載入 nib。

但是，如果要在另一個 xib 或 storyboard 使用這個 custom view 為一個 subview，每次都要回到 code 來處理就變得很不實際。

## 可能做法

這個 project 裡，HPLProfileView 要被重覆使用，但本身也要用 xib 來製作。

在 storyboard 裡，拉出普通的 UIView 並把 class 設成 HPLProfileView。位置可用 auto layout 做設定。

HPLProfileView.xib 的 file owner 是 HPLProfileView，這樣才能接 IBOutlet，但最底層的 view class 其實只是單純的 UIView 而非 HPLProfileView (不然下一步會產生 infinite loop)。

在 HPLProfileView -awakeFromNib，手動把 nib 載入加為 subview，並把它用 auto layout 設成跟自己同大。

換句話說，HPLProfileView 本身只是個容器，並統一負責 loadNib 的邏輯。

## License

MIT License

Copyright © 2015 Mathemusician.net.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

