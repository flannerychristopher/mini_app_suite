// set up background image and styling
const body = document.getElementsByTagName('body')[0];
body.style.boxSizing = 'border-box';
body.style.fontFamily = 'Impact, Arial, sans-serif';
body.style.backgroundImage = 'url(https://c1.staticflickr.com/1/578/23332732465_18eac5244f_b.jpg)';
body.style.backgroundRepeat = 'no-repeat';
body.style.backgroundSize = 'cover';
body.style.backgroundPosition = 'center center';
body.style.backgroundAttachment = 'fixed';
body.style.fontSize = '1em';

// content div as a container
const content = document.createElement('div');
body.appendChild(content);
content.style.width = '25em';
content.style.height = '25em';
content.style.padding = '1em';
content.style.background = '#999';
content.style.background = 'rgba(207, 207, 207, .65)';
content.style.margin = '4em auto 0 auto';
content.style.fontSize = '1.5em';
content.style.lineHeight = '1.7em'

// nav holds the logo and links list
const nav = document.createElement('nav');
nav.style.height = '7em';
content.appendChild(nav);

const logo = document.createElement('img');
logo.src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Mr._Greek_Logo.svg/800px-Mr._Greek_Logo.svg.png";
logo.style.width = '100%';
nav.appendChild(logo);

const ul = document.createElement('ul');
nav.appendChild(ul);
const li0 = document.createElement('li');
const li1 = document.createElement('li');
const li2 = document.createElement('li');
const li3 = document.createElement('li');
ul.appendChild(li0);
ul.appendChild(li1);
ul.appendChild(li2);
ul.appendChild(li3);
li0.textContent = 'Welcome';
li1.textContent = 'Menu';
li2.textContent = 'Directions';
li3.textContent = 'About';
const listItems = document.querySelectorAll('li');
for (i = 0; i < listItems.length; i++) {
  listItems[i].style.cursor = 'pointer';
  listItems[i].style.display = 'inline-block';
  listItems[i].style.width = 'calc(100% / 3)';
  listItems[i].style.textAlign = 'center';
}

// create and style div to hold the text
const text = document.createElement('div');
content.appendChild(text);
text.style.height = '18em';
text.style.display = 'flex';
text.style.flexDirection = 'column';
text.style.alignItems = 'center';
text.style.justifyContent = 'center';

// create text content
const welcomeText = document.createElement('p');
welcomeText.innerHTML = "Welcome to Mr. Greek's website! This is a project for a ficticious restaurant made by <a href='https://github.com/flanthedev/'>flan the dev</a>. The purpose of the project is to create all HTML and CSS through JavaScript. All Images are from <a href='http://www.open-image.net/'>Open-Image.net</a> for royalty-free use.";
text.appendChild(welcomeText);

const aboutText = document.createElement('p');
aboutText.textContent = 'Mr. Greek was founded when the creator of this website searched for a logo he could use on Open-Image.net and found this logo. It has been operating ficticiously ever since.';
text.appendChild(aboutText);

const menuText = document.createElement('p');
menuText.innerHTML = "<ul><li>Chicken Gyro - $3</li><li>Lamb Gyro</li><li>Falafel Wrap - $2</li><li>add fries - $1</li><li>add a case of beer - $24</li></ul>";
text.appendChild(menuText);

const directionText = document.createElement('p');
directionText.textContent = "We are located at 100 Main Street next to the gas station. Call 555-5555 if you have trouble finding us, or if you just want to talk. Sometimes I get lonely and just need someone to talk to.";
text.appendChild(directionText);

// hide all paragraphs by default, show welcome paragraph only to start
const allText = document.getElementsByTagName('p');
function hideText() {
  for (i = 0; i < allText.length; i++) {
    allText[i].style.display = 'none';
  }
};
hideText();
welcomeText.style.display = 'inline';

// show all links in the nav by default, hide the welcome link to start
function showListItems() {
  for (i = 0; i < listItems.length; i++) {
    listItems[i].style.display = 'inline-block';
  }
}
listItems[0].style.display = 'none';

// nav logic
ul.addEventListener('click', (event) => {
  if (event.target === listItems[0]) {
    hideText();
    showListItems();
    listItems[0].style.display = 'none';
    welcomeText.style.display = 'inline';
  } else if (event.target === listItems[1]) {
    hideText();
    showListItems();
    listItems[1].style.display = 'none';
    menuText.style.display = 'inline';
  } else if (event.target === listItems[2]) {
    hideText();
    showListItems();
    listItems[2].style.display = 'none';
    directionText.style.display = 'inline';
  } else if (event.target === listItems[3]) {
    hideText();
    showListItems();
    listItems[3].style.display = 'none';
    aboutText.style.display = 'inline';
  }
})

// change link color
const allLinks = document.getElementsByTagName('a');
for (i = 0; i < allLinks.length; i++) {
  allLinks[i].style.color = '#666';
  allLinks[i].style.textDecoration = 'none';
}
