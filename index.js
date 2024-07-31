const puppeteer = require('puppeteer');

(async () => {
  // 启动浏览器
  const browser = await puppeteer.launch({
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });
  // 打开一个新页面
  const page = await browser.newPage();
  // 导航到指定 URL
  await page.goto('https://www.alexamaster.net/?id=552');
  // 截取屏幕截图
  await page.screenshot({ path: 'example.png' });
  // 关闭浏览器
//   await browser.close();
})();
