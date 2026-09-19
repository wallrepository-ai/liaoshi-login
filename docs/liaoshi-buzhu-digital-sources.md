# 遼史補注 (Chen Shu, Zhonghua 2018): digital-availability survey

Survey date: 2026-09-19. Prepared for the sources-liaoshi database project.
Scope: where a digital copy of 《辽史补注》 exists, in what form, and how it could be
ingested. All statements marked *unverified* rest on search-engine snippets only,
because the research sandbox could not open Chinese, Taiwanese, ctext, Wikisource,
Internet Archive, WorldCat or HathiTrust hosts directly (see section 8).

## 1. The book (from the uploaded title pages)

| Field | Value |
|---|---|
| Title | 遼史補注（全十册） |
| Authors | ［元］脫脫等撰；陳述補注 |
| Publisher | 中華書局, 北京 (www.zhbc.com.cn) |
| Edition | 2018年1月北京第1版，2018年1月第1次印刷 |
| ISBN | 978-7-101-06159-8 (Google Books also lists 7101061591) |
| CIP | 中國版本圖書館 CIP 數據核字（2008）第070045號 — typeset a decade before release |
| Format | 850×1168 mm 1/32, 120⅛ 印張, 24 插頁, 2400 千字, traditional characters, vertical setting |
| Print run / price | 1–1500 册 / ￥580.00 |
| Responsible editor | 李勉 |
| Volume 1 | 卷一至卷六（紀一） |
| Pages (Douban) | 3774 |
| Content | 7000+ notes citing 900+ sources; 正误 / 补阙 / 补歧异 / 存类事; adds 選舉志, 藝文志, 140+ biographies, 國語解補 |

Copyright status: 陳述 died in 1992, so the annotations are protected in the PRC until
the end of 2042; 中華書局 holds the typographic and digital rights. Every database or
scan below is either licensed or unauthorised; none is public domain.

## 2. Short answer

- No open, scrapeable text of 《辽史补注》 exists anywhere (Sinica, ctext, Wikisource,
  Kanripo, 殆知阁, 国学大师, Internet Archive, HathiTrust, Google Books). Those hold only
  the base 《遼史》.
- The only plausible *structured-text* source is Zhonghua's own platform 籍合网
  (中华经典古籍库 and its sibling 边疆史地库). Inclusion is *unverified*; check inside the
  platform with an institutional login.
- Page-image copies exist through 读秀/超星 (library scans, excerpt delivery) and, in
  unauthorised form, through a 书格 forum OCR share and PDF resellers.
- The clean route for a database you serve to other people is a text licence from
  古联数字 (the 籍合网 operator) or a self-made scan + OCR of the print set.

## 3. Authorised routes

### 3.1 籍合网 / 中华经典古籍库 (Zhonghua Book Company, run by 古联数字)

- Home: https://www.ancientbooks.cn/ ; database: https://jingdian.ancientbooks.cn/ and
  https://publish.ancientbooks.cn/docShuju/platform.jspx ; help: http://www.ancientbooks.cn/helpcore
- What it is: full text of Zhonghua's punctuated editions, 13 batches (期) and 10,400+
  titles as of end-2025; institutional IP licence or personal account. Library guides:
  https://library.sysu.edu.cn/eresource/1789 , https://library.fudan.edu.cn/cb/06/c42757a707334/page.htm ,
  https://lib.zjnu.edu.cn/2025/0102/c13998a490334/page.htm , https://libdb.zju.edu.cn/s/lib/libtb/show/1869
- 《辽史补注》 inclusion: *unverified*. No published batch list found online names it.
  A site-restricted search surfaced two records worth opening: a 边疆史地库 book page
  https://bianjiang.ancientbooks.cn/subLib/hisgeo/platformBookDetails.jspx?id=JCEzlFH1598065156963
  and a 中华文史学术论著库 item http://academic.ancientbooks.cn/docLunzhu/lunzhuArticleRead.jspx?id=1411899 .
  Also open 边疆史地库 (https://bianjiang.ancientbooks.cn/subIndexborder.jspx), since Liao
  frontier history is its remit.
- 籍合文库 (Zhonghua's e-book shop) has the base 《辽史》:
  https://wenku.ancientbooks.cn/docWenku/wenkuBookView.jspx?id=1497607 (also id=1677240, title unseen).
- Free subset: 学习强国版 https://xuexi.ancientbooks.cn/docShuju/platform.jspx (needs a 学习强国 account).
- Scraping: the reader renders per page with copy quotas and the licence forbids bulk
  download. For redistribution (your MCP connector) ask 古联 for a data/API licence; they
  license text to research projects. Contact via the help page above.

### 3.2 读秀 / 超星 / 全国图书馆参考咨询联盟 (page images + OCR layer)

- 全国图书馆参考咨询联盟 (public face of 读秀): http://www.ucdrs.superlib.net/ ; 读秀 guide:
  https://library.fudan.edu.cn/e8/28/c42799a518184/page.htm
- Evidence the book is in 读秀: a mirror listing "辽史补注详细介绍_PDF电子图书下载"
  https://www.302edu.com/books/detail/974907f8-e5a5-498a-a5bb-62d26f68801c and a Tsinghua
  non-book-resource record http://media.lib.tsinghua.edu.cn/cxdrmp/index/detail_emlibts.do?RUID=a36e313000b040001
  (both *unverified*).
- Method: register, search 辽史补注, note the SSID per 册, use 试读 (front matter and a
  page range) and 文献传递 (e-mailed PDF excerpts, about 50 pages per request, capped at a
  share of each book). Helper userscripts exist:
  https://greasyfork.org/en/scripts/435569 and https://greasyfork.org/en/scripts/492994 .
  Output is scanned pages with a hidden OCR layer; quality needs re-OCR. Terms of use
  restrict automation, so treat this as an excerpt source, not a full-text source.

### 3.3 Buy the print set, scan, OCR (fully legal for private research use)

- Print: 中图网 https://www.bookschina.com/7660392.htm (also https://m.bookschina.com/9448781.htm),
  publisher page http://www.zhbc.com.cn/zhsj/fg/book/bookinfo.html?bookid=2732 , Douban
  https://book.douban.com/subject/27606565/ .
- OCR tools suited to Zhonghua's vertical, mixed-size typesetting:
  古联 OCR (trained on Zhonghua editions) https://ocr.ancientbooks.cn/ ,
  古籍酷 https://ocr.gj.cool/ , CathayOCR (open source, 繁体竖排, dual-layer PDF and TXT)
  https://github.com/zzhjim02/CathayOCR , comparisons on 书格:
  https://www.shuge.org/meet/topic/78721/ , https://www.shuge.org/meet/topic/196249/ ,
  https://www.shuge.org/meet/topic/104261/ .
- Layout: 《遼史》 text in large type, 陳注 in small type, 補傳/補志 in body size
  (Zhonghua's editing note, see section 7). Use font-size or indentation from the OCR
  output to separate note blocks from base text.

## 4. Sinica and other open text repositories (base 《遼史》 only)

- Scripta Sinica 漢籍全文資料庫, Academia Sinica: free version
  https://hanchi.ihp.sinica.edu.tw/ihp/hanji.htm (registration), portal https://hanchi.ihp.sinica.edu.tw/ ,
  new interface https://hanji.sinica.edu.tw/ , help https://hanchi.ihp.sinica.edu.tw/ihp/help.htm .
  Holds the punctuated 遼史 in 二十五史; does not hold 辽史补注 (2025 new-title list:
  https://www1.ihp.sinica.edu.tw/Bulletin/News/2520/Detail). Copying is limited by its terms.
- 史語所 archives: 陳述 began the work at 史語所 (1935 onward) on 史語所 稿箋, and the early
  manuscript survives (文汇 report, section 7), but no digitised manuscript appears in
  傅斯年圖書館 systems: https://dap.ihp.sinica.edu.tw/ , https://ihparchive.ihp.sinica.edu.tw/ihpkmc/ihpkm ,
  https://ndweb.iis.sinica.edu.tw/rarebook/Search/index.jsp .
- ctext: https://ctext.org/wiki.pl?if=en&res=845139 (data page https://ctext.org/datawiki.pl?if=gb&res=320828&remap=gb); has an API, terms limit bulk use.
- Wikisource 遼史 (CC BY-SA, MediaWiki API is the cleanest scrape): https://zh.wikisource.org/zh-hant/%E9%81%BC%E5%8F%B2
- Kanripo KR2a0033 遼史 (四庫 text, git clone from github.com/kanripo): https://www.kanripo.org/text/KR2a0033/
- 殆知阁 plain text: https://daizhige.org/%E5%8F%B2%E8%97%8F/%E6%AD%A3%E5%8F%B2/%E8%BE%BD%E5%8F%B2.html
- 24-shi.com simplified text with search: http://www.24-shi.com/24shi_jianti/21.thtml
- 国学大师 scans and search: https://www.guoxuedashi.net/guji/ , https://www.guoxuedashi.com/search/ (no 补注 hit).

## 5. Channels checked with no listing found

Google Books: catalogue record only, no preview or e-book
(https://books.google.com/books?vid=ISBN9787101061598, id a1e8swEACAAJ, "遼史補注: 紀, 第1卷").
Google Play Books: nothing by title or ISBN. 微信读书, 京东读书, Kindle, Apple Books, 得到,
HyRead, 華藝 iRead: no listing surfaced (other Zhonghua sets are on 微信读书, this one is not).
Internet Archive, HathiTrust, WorldCat, Anna's Archive: no indexed hit; hosts unreachable
from the sandbox, so treat as "not found", not "absent".

## 6. Unauthorised copies seen in search results (not recommended)

- 书格 forum thread "常用大部古籍 ocr" https://www.shuge.org/meet/topic/102237/ lists a
  user-shared OCR'd "辽史补注.pdf" among in-copyright Zhonghua sets (*unverified*, thread unopened).
- PDF resellers and spam "free e-book" sites list the set: ycypdf001.cn (post 7593),
  cn.mianfei-dianzi-shu.site, chinadiandian.com (a 242 GB Zhonghua PDF bundle).
  These infringe Zhonghua's rights, are often scams, and are unsuitable for a database
  you redistribute.

## 7. Background reading on the edition

- 一波三折的《辽史补注》出版过程 (文汇, 2018-06-15): https://wenhui.whb.cn/third/yidian/201806/15/200909.html ,
  mirror http://www.chinawriter.com.cn/n1/2018/0615/c404063-30062791.html , PDF https://dzb.whb.cn/images/2018-06/15/XR11/XR110615.pdf
- 《辽史补注》与史注传统: https://wenhui.whb.cn/third/yidian/201806/15/200902.html
- 邱靖嘉, 辽史研究的丰碑 (澎湃): https://www.thepaper.cn/newsDetail_forward_2202346
- 康鹏, 上穷碧落下黄泉: https://book.douban.com/review/12131929/
- Editor's note 《辽史补注》是本什么样的书: https://www.sohu.com/a/211902107_160261 ;
  preface and postscript: https://www.sohu.com/a/213653560_567216
- Baidu Baike: https://baike.baidu.com/item/%E8%BE%BD%E5%8F%B2%E8%A1%A5%E6%B3%A8/57534322

Editing principle stated by Zhonghua: keep the manuscript as is, "改错不改异"; the 1990s
typesetting was redone with 《遼史》 text and 陳注 distinguished by type size.

## 8. Suggested pipeline for sources-liaoshi

1. Confirm holdings: have a library user open 籍合网 and search 辽史补注 in 中华经典古籍库
   and 边疆史地库. If present, request a text licence from 古联 for the database; do not
   scrape the reader.
2. In parallel, buy the print set and scan it (3774 pages). OCR with 古联 OCR or CathayOCR,
   keeping page and column coordinates.
3. Segment: split per 卷 using the running heads, then split base text from 陳注 by type
   size. Align base text to a punctuated 遼史 (Wikisource or Scripta Sinica) with fuzzy
   matching; expect variant readings, since 陳述 transcribed the text himself.
4. Store notes with (卷, 段落 index, base-text anchor, note text, cited source), so the
   MCP connector can answer "what does Chen Shu add to this passage".
5. For publication to third parties keep the licence question settled first; quoting
   individual notes with attribution is defensible, bulk redistribution is not.

## 9. Sandbox limits on this survey

The egress proxy blocked ancientbooks.cn (all subdomains), zhbc.com.cn, douban.com,
superlib.net, duxiu.com, hanchi.ihp.sinica.edu.tw, ihp.sinica.edu.tw, ctext.org,
zh.wikisource.org, archive.org, worldcat.org, hathitrust.org, shuge.org, weread.qq.com,
jd.com, amazon, apple, kanripo.org, guoxuedashi, daizhige, sohu, thepaper, whb.cn,
zhihu and the jina/translate reader proxies. Reachable: google.com, books.google.com,
play.google.com, github.com. Everything else was established from search-engine snippets.
