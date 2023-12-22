<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%
        out.println("<title>" + request.getAttribute("domain_exchange_name") + " - " + request.getAttribute("domain_title") + "</title>");
    %>
    <meta name="Description" content="Best place to buy, trade and sell Bitcoin, Ethereum and over 100 cryptocurrencies safely and securely.">
    <meta name="Keywords" content="BTC, Btc trading platform, Bitcoin, ETH, EOS, TRX, Qtum, NEO, Ripple, BTC Price, LTC, BCH, ETC, Blockchain">
    <%
        out.println("<meta property=\"og:title\" content=\"" + request.getAttribute("domain_title") + "\">");
    %>
    <meta property="og:description" content="Best place to buy, trade and sell Bitcoin, Ethereum and over 100 cryptocurrencies safely and securely.">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;600&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="swiper%409.1.0/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/css/style.min.css">
    <%
        out.println("<link rel=\"icon\" href=\"" + request.getAttribute("domain_icon") + "\">");
    %>
</head>
<body>
<header class="header">
    <div class="container__header">
        <div class="header__menu-box">
            <a class="header__img-box" href="/">
                <%
                    out.println("<img class=\"header__menu-img\" src=\"" + request.getAttribute("domain_icon") + "\" alt=\"logo\">");
                    out.println("<span class=\"header__img-text\">" + request.getAttribute("domain_exchange_name") + "</span>");
                %>
            </a>
            <div class="header__menu-btn-box">
                <div class="bg-remove"></div>
                <div class="menu__list-box">
                    <ul class="menu__list">
                        <li class="menu__list-item">
                            <a href="/profile/p2p">P2P</a>
                        </li>
                        <li class="menu__list-item">
                            <a href="trading">Trading</a>
                        </li>
                        <li class="menu__list-item trade">
                            <span class="menu__item-bf menu__trade-link">Market tools</span>
                            <ul class="menu__list-trade trade-list">
                                <li class="menu__trade-item">
                                 <span class="market_tools_img">
                                 <img style="width: 45px; margin-top: 17px;" src="assets/img/icon/cap.svg">
                                 </span>
                                    <a style='width: 75%; float: right;' class="menu__trade-item-link" href="/tools/marketcrypto">
                                        Crypto market cap
                                        <span class="menu__trade-item-des">
                                 Most of the available crypto assets and sorts them based on the market capitalization
                                 </span>
                                    </a>
                                </li>
                                <li class="menu__trade-item">
                                 <span class="market_tools_img">
                                 <img style="width: 45px; margin-top: 38px;" src="assets/img/icon/market.svg">
                                 </span>
                                    <a style='width: 75%; float: right;' class="menu__trade-item-link" href="/tools/marketscreener">
                                        Market screener
                                        <span class="menu__trade-item-des">
                                 Powerful tool that allows to filter instruments based on fundamental data and various technical indicators
                                 </span>
                                    </a>
                                </li>
                                <li class="menu__trade-item">
                                 <span class="market_tools_img">
                                 <img style="width: 45px; margin-top: 37px;" src="assets/img/icon/tech.svg">
                                 </span>
                                    <a style='width: 75%; float: right;' class="menu__trade-item-link" href="/tools/technicalanalysis">
                                        Technical analysis
                                        <span class="menu__trade-item-des">
                                 Advanced tool that displays ratings based on technical indicators
                                 </span>
                                    </a>
                                </li>
                                <li class="menu__trade-item">
                                 <span class="market_tools_img">
                                 <img style="width: 45px; margin-top: 32px;" src="assets/img/icon/cross.svg">
                                 </span>
                                    <a style='width: 75%; float: right;' class="menu__trade-item-link" href="/tools/crossrates">
                                        Cross rates
                                        <span class="menu__trade-item-des">
                                 Real-time quotes of the selected currencies in comparison to the other major currencies at a glance
                                 </span>
                                    </a>
                                </li>
                                <li class="menu__trade-item">
                                 <span class="market_tools_img">
                                 <img style="width: 45px; margin-top: 48px;" src="assets/img/icon/heat.svg">
                                 </span>
                                    <a style='width: 75%; float: right;' class="menu__trade-item-link" href="/tools/heatmap">
                                        Currency heat map
                                        <span class="menu__trade-item-des">
                                 Quick overview of action in the currency markets. It lets you spot strong and weak currencies in real-time and how strong they are in relation to one another
                                 </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu__list-item">
                            <a href="/profile/swap">Swap</a>
                        </li>
                        <li class="menu__list-item">
                            <a style="color: #ffbc00;" href="/profile/invest">Invest pad</a>
                        </li>
                        <li class="menu__list-item">
                            <a href="/profile/wallet">Wallet</a>
                        </li>
                        <li class="menu__list-item">
                            <a href="/news">News</a>
                        </li>
                        <li class="menu__list-item">
                            <a href="/profile/support">Support</a>
                        </li>
                    </ul>
                    <ul class="menu__list-footer">
                        <%
                            if (request.getAttribute("authorized") == null) {
                                out.print("<li class=\"menu__list-item menu__list-item-log-in\">\n" +
                                        "                            <a href=\"/signin\">Log in</a>\n" +
                                        "                        </li>\n" +
                                        "                        <li class=\"menu__list-item menu__list-item-log-in\">\n" +
                                        "                            <a href=\"/signup\">Sign up</a>\n" +
                                        "                        </li>");
                            } else {
                                out.print("<li class=\"menu__list-item menu__list-item-log-in\">\n" +
                                        "                            <a href=\"/profile/wallet\">Profile</a>\n" +
                                        "                        </li>");
                            }
                        %>
                    </ul>
                </div>
                <%
                    if (request.getAttribute("authorized") == null) {
                        out.print("<div class=\"header__sign-box\">\n" +
                                "                                    <a class=\"header__btn-log\" href=\"/signin\">Log in</a>\n" +
                                "                                    <a class=\"header__btn-sign\" href=\"/signup\">Sign up</a>\n" +
                                "                                </div>");
                    } else {
                        out.print("<div class=\"header__sign-box\">\n" +
                                "                                    <a class=\"header__btn-sign\" href=\"/profile/wallet\">Profile</a>\n" +
                                "                                </div>");
                    }
                %>
            </div>
            <div class="menu__btn">
                <span class="menu__btn-line"></span>
            </div>
        </div>
    </div>
</header>
<main>
    <section class="home">
        <div class="bg-img"></div>
        <div class="container__main">
            <div class="home__info">
                <div class="home__info-title">
                    The world’s most
                    <br>secure trading platform
                </div>
                <div class="home__info-text">
                    Join the fastest growing global cryptocurrency exchange <br> with the lowest fees around.
                </div>
                <div class="home__info-links" style="display:inline-flex;">
                    <a style="background: rgb(0,126,218);
                        background: linear-gradient(
                        90deg, rgba(0,126,218,1) 0%, rgb(52 161 193) 50%);" class="home__info-link" href="/trading">
                        Start trading
                    </a>
                    <%
                        if (request.getAttribute("authorized") != null) {
                            out.println("<a style=\"background: linear-gradient(90deg, rgb(84 60 216) 0%, rgb(67 96 148) 50%);\" class=\"home__info-link\" href=\"/profile/wallet\">\n" +
                                    "Profile\n" +
                                    "</a>");
                        } else {
                            out.println("<a style=\"background: linear-gradient(90deg, rgb(84 60 216) 0%, rgb(67 96 148) 50%);\" class=\"home__info-link\" href=\"/signin\">\n" +
                                    "Login\n" +
                                    "</a>");
                        }
                    %>
                </div>
            </div>
        </div>
    </section>
    <section class="slider__graphics">
        <div class="slider__graphics-items container__header">
            <div class="slider-graphics swiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <%
                            List<Map<String, Object>> coins = (List<Map<String, Object>>) request.getAttribute("coins");
                            String date = (String) request.getAttribute("date");
                        %>
                        <div class="graphics__slide ">
                            <%
                                out.println("<a class=\"graphics__slide-link\" href=\"trading?symbol=" + coins.get(0).get("symbol") + "\">");
                            %>
                            <div class="graphics__slide-info">
                                <div class="graphics__slide-container">
                                    <div class="graphics__slide-img">
                                        <%
                                            out.println("<img src=\"" + coins.get(0).get("image") + "\" alt=\"\">");
                                        %>
                                    </div>
                                    <div class="graphics__slide-box">
                                        <div class="graphics__slide-name">
                                            <%
                                                out.println(coins.get(0).get("name"));
                                            %>
                                        </div>
                                        <div class="graphics__slide-date">
                                            <%
                                                out.println(date);
                                            %>
                                        </div>
                                    </div>
                                    <div class="graphics__slide-button">
                                    <span>
                                    BUY
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="graphics__slide-prise">
                                <%
                                    out.println("$" + coins.get(0).get("price"));
                                %>
                            </div>
                            <%
                                out.println(String.format("<div class=\"graphics__slide-percent-%s\">\n" +
                                                "                                    $%s (%s%%)\n" +
                                                "                                </div>", (double) coins.get(0).get("price_change") > 0 ? "green" : "red",
                                        coins.get(0).get("price_change"), coins.get(0).get("price_change_percent")));
                            %>
                            </a>
                            <div class="graphics__slide-schedule">
                                <div data-v-45bb570a="" data-v-486e7f86="" class="sparkline-chart-wrapper currency__chart">
                                    <svg data-v-45bb570a="" viewbox="0 0 475 160" class="chart chart--btc chart--light">
                                        <g data-v-45bb570a="">
                                            <path data-v-45bb570a="" d="M 13,99.5275 C 14.50719432365656,101.68857026660112 18.66980690978076,126.79774712451722 22.3061,114.4246 C 25.94239309021924,102.05145287548278 28.058961866736276,26.903122800855698 31.6122,15.59020000000001 C 35.16543813326373,4.27727719914432 37.87502479927585,32.88245221595622 40.9183,37.594800000000006 C 43.961575200724155,42.30714778404379 47.0588062856315,41.699981250169984 50.2244,48.027100000000004 C 53.38999371436851,54.354218749830025 56.17683980982058,72.17512553730126 59.5305,80.9328 C 62.88416019017942,89.69047446269875 65.83269933861119,111.8904220454819 68.8366,107.7113 C 71.84050066138882,103.53217795451809 75.21189365895894,55.2596595801556 78.1427,52.1083 C 81.07350634104108,48.95694041984441 84.44271464145093,81.66821948584733 87.4488,85.8772 C 90.45488535854908,90.08618051415267 93.94933240980923,80.27750777820552 96.7549,81.1353 C 99.56046759019078,81.99309222179448 102.84891955588225,84.95559945647175 106.061,91.8872 C 109.27308044411777,98.81880054352827 112.49833746290312,126.35208258145595 115.36710000000001,128.5438 C 118.23586253709689,130.73551741854408 121.73345123655078,110.42764017665111 124.67320000000001,107.1466 C 127.61294876344924,103.8655598233489 131.11081390719303,108.0122823715393 133.97930000000002,105.8252 C 136.847786092807,103.63811762846069 140.37316233523475,94.79591332568651 143.2854,91.9191 C 146.19763766476527,89.04228667431349 149.70068896592625,88.41496580418051 152.5915,85.8665 C 155.48231103407375,83.3180341958195 158.98515472304965,77.08882816883852 161.8976,74.2089 C 164.81004527695038,71.32897183116148 168.30800462654474,63.26186244927996 171.20370000000003,65.8865 C 174.0993953734553,68.51113755072004 177.62905098756255,90.05274595931648 180.5098,92.4413 C 183.39054901243748,94.82985404068351 187.02405032259097,82.46730842507691 189.8159,82.4992 C 192.60774967740903,82.5310915749231 196.27678177722777,94.44124395473165 199.122,92.6651 C 201.96721822277226,90.88895604526834 204.84175528560434,81.8419917974379 208.42810000000003,70.1063 C 212.01444471439572,58.37060820256211 214.81810621813128,15.935287264710226 217.73420000000002,13.000799999999998 C 220.65029378186875,10.066312735289769 223.95112108552698,44.42936324348464 227.0403,49.753299999999996 C 230.12947891447303,55.07723675651536 233.38079584619092,45.92339558646804 236.34640000000002,49.572199999999995 C 239.3120041538091,53.22100441353195 242.3024215572265,66.26443468190129 245.65250000000003,74.9761 C 249.00257844277357,83.68776531809871 251.93703013557132,104.52777736094174 254.95860000000002,108.9474 C 257.9801698644287,113.36702263905826 261.3129416875918,108.88396565388697 264.2647,105.43090000000001 C 267.21645831240824,101.97783434611304 270.7195555689522,86.94388180458164 273.5708,85.0567 C 276.4220444310478,83.16951819541838 279.73430173862204,86.24409792120856 282.87690000000003,92.27080000000001 C 286.01949826137803,98.29750207879145 289.35056182795904,127.89528400977167 292.183,126.37 C 295.01543817204094,124.84471599022834 297.6767650820164,96.23198862320139 301.4891,81.6148 C 305.3014349179836,66.99761137679862 307.85501783174567,30.68438894969384 310.7952,27.397099999999995 C 313.7353821682544,24.10981105030615 317.3056745577092,58.40848639178703 320.10130000000004,58.8536 C 322.89692544229086,59.29871360821297 326.5868973850653,31.782205382549016 329.40740000000005,30.5193 C 332.2279026149348,29.25639461745099 335.7486773850248,46.38187817686788 338.7135,50.0197 C 341.67832261497523,53.65752182313212 345.2265589859491,55.91797963929572 348.0196,55.6674 C 350.81264101405094,55.41682036070428 354.4075110872573,51.22716835227247 357.32570000000004,48.2615 C 360.24388891274276,45.295831647727525 363.74551751914527,37.57832536923547 366.6318,35.101299999999995 C 369.51808248085473,32.62427463076452 373.13137390208516,31.929703392342837 375.9379,31.041399999999996 C 378.74442609791487,30.153096607657154 382.26651043371226,25.063248594598807 385.244,28.878200000000007 C 388.2214895662878,32.69315140540121 391.26276089546235,49.489291641066536 394.55010000000004,57.393699999999995 C 397.83743910453774,65.29810835893346 400.73264508686134,77.05255363524475 403.85620000000006,82.8296 C 406.9797549131388,88.60664636475525 410.121956015239,92.35042958314227 413.1623,97.02340000000001 C 416.20264398476104,101.69637041685775 419.6303166097996,113.36092389597269 422.46840000000003,115 C 425.30648339020047,116.63907610402731 428.97222036065097,107.72292686463561 431.77450000000005,108.4679 C 434.5767796393491,109.21287313536439 437.9694169337705,114.60713306226499 441.0806,120.22149999999999 C 444.1917830662295,125.83586693773499 447.5722045244513,145.88559425346247 450.3867,147 C 453.20119547554873,148.11440574653753 458.14044446372407,130.7862484389396 459.69280000000003,128.0217" class="chart__sparkline"></path>
                                            <circle data-v-45bb570a="" cx="13" cy="99.5275" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="22.3061" cy="114.4246" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="31.6122" cy="15.59020000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="40.9183" cy="37.594800000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="50.2244" cy="48.027100000000004" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="59.5305" cy="80.9328" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="68.8366" cy="107.7113" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="78.1427" cy="52.1083" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="87.4488" cy="85.8772" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="96.7549" cy="81.1353" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="106.061" cy="91.8872" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="115.36710000000001" cy="128.5438" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="124.67320000000001" cy="107.1466" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="133.97930000000002" cy="105.8252" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="143.2854" cy="91.9191" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="152.5915" cy="85.8665" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="161.8976" cy="74.2089" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="171.20370000000003" cy="65.8865" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="180.5098" cy="92.4413" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="189.8159" cy="82.4992" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="199.122" cy="92.6651" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="208.42810000000003" cy="70.1063" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="217.73420000000002" cy="13.000799999999998" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="227.0403" cy="49.753299999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="236.34640000000002" cy="49.572199999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="245.65250000000003" cy="74.9761" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="254.95860000000002" cy="108.9474" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="264.2647" cy="105.43090000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="273.5708" cy="85.0567" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="282.87690000000003" cy="92.27080000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="292.183" cy="126.37" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="301.4891" cy="81.6148" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="310.7952" cy="27.397099999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="320.10130000000004" cy="58.8536" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="329.40740000000005" cy="30.5193" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="338.7135" cy="50.0197" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="348.0196" cy="55.6674" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="357.32570000000004" cy="48.2615" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="366.6318" cy="35.101299999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="375.9379" cy="31.041399999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="385.244" cy="28.878200000000007" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="394.55010000000004" cy="57.393699999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="403.85620000000006" cy="82.8296" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="413.1623" cy="97.02340000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="422.46840000000003" cy="115" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="431.77450000000005" cy="108.4679" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="441.0806" cy="120.22149999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="450.3867" cy="147" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="459.69280000000003" cy="128.0217" r="6" class="chart__circle"></circle>
                                            <path data-v-45bb570a="" d="M -50,0 L-50,160" class="chart__line"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="graphics__slide-volume">
                                <%
                                    out.println("$" + coins.get(0).get("quote_volume"));
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="graphics__slide ">
                            <%
                                out.println("<a class=\"graphics__slide-link\" href=\"trading?symbol=" + coins.get(1).get("symbol") + "\">");
                            %>
                            <div class="graphics__slide-info">
                                <div class="graphics__slide-container">
                                    <div class="graphics__slide-img">
                                        <%
                                            out.println("<img src=\"" + coins.get(1).get("image") + "\" alt=\"\">");
                                        %>
                                    </div>
                                    <div class="graphics__slide-box">
                                        <div class="graphics__slide-name">
                                            <%
                                                out.println(coins.get(1).get("name"));
                                            %>
                                        </div>
                                        <div class="graphics__slide-date">
                                            <%
                                                out.println(date);
                                            %>
                                        </div>
                                    </div>
                                    <div class="graphics__slide-button">
                                    <span>
                                    BUY
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="graphics__slide-prise">
                                <%
                                    out.println("$" + coins.get(1).get("price"));
                                %>
                            </div>
                            <%
                                out.println(String.format("<div class=\"graphics__slide-percent-%s\">\n" +
                                                "                                    $%s (%s%%)\n" +
                                                "                                </div>", (double) coins.get(1).get("price_change") > 0 ? "green" : "red",
                                        coins.get(1).get("price_change"), coins.get(1).get("price_change_percent")));
                            %>
                            </a>
                            <div class="graphics__slide-schedule">
                                <div data-v-45bb570a="" data-v-486e7f86="" class="sparkline-chart-wrapper currency__chart">
                                    <svg data-v-45bb570a="" viewbox="0 0 475 160" class="chart chart--eth chart--light">
                                        <g data-v-45bb570a="">
                                            <path data-v-45bb570a="" d="M 13,99.5275 C 14.50719432365656,101.68857026660112 18.66980690978076,126.79774712451722 22.3061,114.4246 C 25.94239309021924,102.05145287548278 28.058961866736276,26.903122800855698 31.6122,15.59020000000001 C 35.16543813326373,4.27727719914432 37.87502479927585,32.88245221595622 40.9183,37.594800000000006 C 43.961575200724155,42.30714778404379 47.0588062856315,41.699981250169984 50.2244,48.027100000000004 C 53.38999371436851,54.354218749830025 56.17683980982058,72.17512553730126 59.5305,80.9328 C 62.88416019017942,89.69047446269875 65.83269933861119,111.8904220454819 68.8366,107.7113 C 71.84050066138882,103.53217795451809 75.21189365895894,55.2596595801556 78.1427,52.1083 C 81.07350634104108,48.95694041984441 84.44271464145093,81.66821948584733 87.4488,85.8772 C 90.45488535854908,90.08618051415267 93.94933240980923,80.27750777820552 96.7549,81.1353 C 99.56046759019078,81.99309222179448 102.84891955588225,84.95559945647175 106.061,91.8872 C 109.27308044411777,98.81880054352827 112.49833746290312,126.35208258145595 115.36710000000001,128.5438 C 118.23586253709689,130.73551741854408 121.73345123655078,110.42764017665111 124.67320000000001,107.1466 C 127.61294876344924,103.8655598233489 131.11081390719303,108.0122823715393 133.97930000000002,105.8252 C 136.847786092807,103.63811762846069 140.37316233523475,94.79591332568651 143.2854,91.9191 C 146.19763766476527,89.04228667431349 149.70068896592625,88.41496580418051 152.5915,85.8665 C 155.48231103407375,83.3180341958195 158.98515472304965,77.08882816883852 161.8976,74.2089 C 164.81004527695038,71.32897183116148 168.30800462654474,63.26186244927996 171.20370000000003,65.8865 C 174.0993953734553,68.51113755072004 177.62905098756255,90.05274595931648 180.5098,92.4413 C 183.39054901243748,94.82985404068351 187.02405032259097,82.46730842507691 189.8159,82.4992 C 192.60774967740903,82.5310915749231 196.27678177722777,94.44124395473165 199.122,92.6651 C 201.96721822277226,90.88895604526834 204.84175528560434,81.8419917974379 208.42810000000003,70.1063 C 212.01444471439572,58.37060820256211 214.81810621813128,15.935287264710226 217.73420000000002,13.000799999999998 C 220.65029378186875,10.066312735289769 223.95112108552698,44.42936324348464 227.0403,49.753299999999996 C 230.12947891447303,55.07723675651536 233.38079584619092,45.92339558646804 236.34640000000002,49.572199999999995 C 239.3120041538091,53.22100441353195 242.3024215572265,66.26443468190129 245.65250000000003,74.9761 C 249.00257844277357,83.68776531809871 251.93703013557132,104.52777736094174 254.95860000000002,108.9474 C 257.9801698644287,113.36702263905826 261.3129416875918,108.88396565388697 264.2647,105.43090000000001 C 267.21645831240824,101.97783434611304 270.7195555689522,86.94388180458164 273.5708,85.0567 C 276.4220444310478,83.16951819541838 279.73430173862204,86.24409792120856 282.87690000000003,92.27080000000001 C 286.01949826137803,98.29750207879145 289.35056182795904,127.89528400977167 292.183,126.37 C 295.01543817204094,124.84471599022834 297.6767650820164,96.23198862320139 301.4891,81.6148 C 305.3014349179836,66.99761137679862 307.85501783174567,30.68438894969384 310.7952,27.397099999999995 C 313.7353821682544,24.10981105030615 317.3056745577092,58.40848639178703 320.10130000000004,58.8536 C 322.89692544229086,59.29871360821297 326.5868973850653,31.782205382549016 329.40740000000005,30.5193 C 332.2279026149348,29.25639461745099 335.7486773850248,46.38187817686788 338.7135,50.0197 C 341.67832261497523,53.65752182313212 345.2265589859491,55.91797963929572 348.0196,55.6674 C 350.81264101405094,55.41682036070428 354.4075110872573,51.22716835227247 357.32570000000004,48.2615 C 360.24388891274276,45.295831647727525 363.74551751914527,37.57832536923547 366.6318,35.101299999999995 C 369.51808248085473,32.62427463076452 373.13137390208516,31.929703392342837 375.9379,31.041399999999996 C 378.74442609791487,30.153096607657154 382.26651043371226,25.063248594598807 385.244,28.878200000000007 C 388.2214895662878,32.69315140540121 391.26276089546235,49.489291641066536 394.55010000000004,57.393699999999995 C 397.83743910453774,65.29810835893346 400.73264508686134,77.05255363524475 403.85620000000006,82.8296 C 406.9797549131388,88.60664636475525 410.121956015239,92.35042958314227 413.1623,97.02340000000001 C 416.20264398476104,101.69637041685775 419.6303166097996,113.36092389597269 422.46840000000003,115 C 425.30648339020047,116.63907610402731 428.97222036065097,107.72292686463561 431.77450000000005,108.4679 C 434.5767796393491,109.21287313536439 437.9694169337705,114.60713306226499 441.0806,120.22149999999999 C 444.1917830662295,125.83586693773499 447.5722045244513,145.88559425346247 450.3867,147 C 453.20119547554873,148.11440574653753 458.14044446372407,130.7862484389396 459.69280000000003,128.0217" class="chart__sparkline"></path>
                                            <circle data-v-45bb570a="" cx="13" cy="99.5275" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="22.3061" cy="114.4246" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="31.6122" cy="15.59020000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="40.9183" cy="37.594800000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="50.2244" cy="48.027100000000004" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="59.5305" cy="80.9328" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="68.8366" cy="107.7113" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="78.1427" cy="52.1083" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="87.4488" cy="85.8772" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="96.7549" cy="81.1353" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="106.061" cy="91.8872" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="115.36710000000001" cy="128.5438" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="124.67320000000001" cy="107.1466" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="133.97930000000002" cy="105.8252" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="143.2854" cy="91.9191" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="152.5915" cy="85.8665" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="161.8976" cy="74.2089" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="171.20370000000003" cy="65.8865" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="180.5098" cy="92.4413" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="189.8159" cy="82.4992" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="199.122" cy="92.6651" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="208.42810000000003" cy="70.1063" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="217.73420000000002" cy="13.000799999999998" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="227.0403" cy="49.753299999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="236.34640000000002" cy="49.572199999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="245.65250000000003" cy="74.9761" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="254.95860000000002" cy="108.9474" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="264.2647" cy="105.43090000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="273.5708" cy="85.0567" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="282.87690000000003" cy="92.27080000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="292.183" cy="126.37" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="301.4891" cy="81.6148" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="310.7952" cy="27.397099999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="320.10130000000004" cy="58.8536" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="329.40740000000005" cy="30.5193" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="338.7135" cy="50.0197" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="348.0196" cy="55.6674" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="357.32570000000004" cy="48.2615" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="366.6318" cy="35.101299999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="375.9379" cy="31.041399999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="385.244" cy="28.878200000000007" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="394.55010000000004" cy="57.393699999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="403.85620000000006" cy="82.8296" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="413.1623" cy="97.02340000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="422.46840000000003" cy="115" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="431.77450000000005" cy="108.4679" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="441.0806" cy="120.22149999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="450.3867" cy="147" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="459.69280000000003" cy="128.0217" r="6" class="chart__circle"></circle>
                                            <path data-v-45bb570a="" d="M -50,0 L-50,160" class="chart__line"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="graphics__slide-volume">
                                <%
                                    out.println("$" + coins.get(1).get("quote_volume"));
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="graphics__slide ">
                            <%
                                out.println("<a class=\"graphics__slide-link\" href=\"trading?symbol=" + coins.get(2).get("symbol") + "\">");
                            %>
                            <div class="graphics__slide-info">
                                <div class="graphics__slide-container">
                                    <div class="graphics__slide-img">
                                        <%
                                            out.println("<img src=\"" + coins.get(2).get("image") + "\" alt=\"\">");
                                        %>
                                    </div>
                                    <div class="graphics__slide-box">
                                        <div class="graphics__slide-name">
                                            <%
                                                out.println(coins.get(2).get("name"));
                                            %>
                                        </div>
                                        <div class="graphics__slide-date">
                                            <%
                                                out.println(date);
                                            %>
                                        </div>
                                    </div>
                                    <div class="graphics__slide-button">
                                    <span>
                                    BUY
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="graphics__slide-prise">
                                <%
                                    out.println("$" + coins.get(2).get("price"));
                                %>
                            </div>
                            <%
                                out.println(String.format("<div class=\"graphics__slide-percent-%s\">\n" +
                                                "                                    $%s (%s%%)\n" +
                                                "                                </div>", (double) coins.get(2).get("price_change") > 0 ? "green" : "red",
                                        coins.get(2).get("price_change"), coins.get(2).get("price_change_percent")));
                            %>
                            </a>
                            <div class="graphics__slide-schedule">
                                <div data-v-45bb570a="" data-v-486e7f86="" class="sparkline-chart-wrapper currency__chart">
                                    <svg data-v-45bb570a="" viewbox="0 0 475 160" class="chart chart--xrp chart--light">
                                        <g data-v-45bb570a="">
                                            <path data-v-45bb570a="" d="M 13,132.8674 C 14.498941177642843,134.91573777617162 18.86618514098765,156.863752268162 22.3061,147 C 25.746014859012355,137.136247731838 27.730848061438717,81.25427161585891 31.6122,65.7581 C 35.49355193856129,50.26192838414108 38.126068409593096,42.28404565570526 40.9183,42.1399 C 43.71053159040691,41.99575434429473 46.80801531382224,55.18426183009746 50.2244,64.7466 C 53.64078468617777,74.30893816990255 56.61936142960987,104.36609547603985 59.5305,107.2264 C 62.44163857039014,110.08670452396015 65.45705561655538,93.68236150513592 68.8366,84.5924 C 72.21614438344463,75.50243849486408 75.15155382630584,41.306861751915974 78.1427,45.310900000000004 C 81.13384617369417,49.31493824808403 84.11900875207343,103.77797653927504 87.4488,112.22890000000001 C 90.77859124792658,120.67982346072498 93.899774192987,100.97791838708217 96.7549,102.93469999999999 C 99.61002580701302,104.89148161291781 103.02960916641048,121.31699226784008 106.061,125.8694 C 109.09239083358953,130.42180773215992 112.54971493440193,133.10127388616203 115.36710000000001,134.2889 C 118.18448506559808,135.476526113838 121.88038467628597,134.40546027782128 124.67320000000001,134.1795 C 127.46601532371405,133.9535397221787 131.0093109627518,136.4136876311346 133.97930000000002,132.7034 C 136.94928903724823,128.99311236886538 140.34817558393857,111.78317974606766 143.2854,108.5386 C 146.22262441606145,105.29402025393235 149.78055087154985,111.25233007031413 152.5915,110.2334 C 155.40244912845014,109.21446992968588 158.8820045193858,105.7424469920584 161.8976,101.4039 C 164.91319548061423,97.06535300794158 168.40883745327366,79.93052424749278 171.20370000000003,80.328 C 173.9985625467264,80.72547575250722 177.71657699210863,104.46101382834806 180.5098,104.1922 C 183.3030230078914,103.92338617165194 186.8932115805111,81.474184825653 189.8159,78.4419 C 192.7385884194889,75.40961517434701 196.33016970503604,83.1749045001375 199.122,83.17099999999999 C 201.913830294964,83.16709549986248 204.95253215920752,88.73457998299668 208.42810000000003,78.4145 C 211.90366784079254,68.09442001700333 214.57028467106855,19.305227083212586 217.73420000000002,13 C 220.89811532893148,6.694772916787414 224.11543752455108,32.15969018067104 227.0403,35.224000000000004 C 229.96516247544892,38.288309819328965 233.38727080709245,30.682315893126045 236.34640000000002,34.239900000000006 C 239.30552919290758,37.797484106873966 242.4041106554082,52.424522995614964 245.65250000000003,59.8262 C 248.9008893445919,67.22787700438504 252.0882258788714,82.59245419440596 254.95860000000002,84.81110000000001 C 257.8289741211286,87.02974580559408 261.3354672922262,78.39928305465193 264.2647,75.2709 C 267.1939327077738,72.14251694534806 270.7365943668215,64.6952905636152 273.5708,63.133799999999994 C 276.4050056331785,61.572309436384785 279.71857961603786,58.131687720096984 282.87690000000003,64.3639 C 286.0352203839622,70.59611227990302 289.3199135066175,103.73673879966827 292.183,105.8323 C 295.04608649338246,107.92786120033173 298.0622242952644,88.65795113516342 301.4891,78.9612 C 304.9159757047356,69.2644488648366 307.9989034576732,39.3604124217445 310.7952,39.8437 C 313.59149654232687,40.3269875782555 317.1933414755673,79.53854447518117 320.10130000000004,82.3509 C 323.00925852443277,85.16325552481882 326.4687885308318,62.62612743543542 329.40740000000005,59.36150000000001 C 332.34601146916833,56.09687256456459 335.8319422234638,57.34262910189841 338.7135,59.744200000000006 C 341.59505777653624,62.1457708981016 345.22697760795154,76.26618288415989 348.0196,76.0636 C 350.8122223920485,75.8610171158401 354.433585351333,60.89158195695434 357.32570000000004,58.3227 C 360.21781464866706,55.753818043045655 363.7887499605678,59.94859162895907 366.6318,58.21339999999999 C 369.47485003943217,56.47820837104092 373.14116589646704,46.7196959009708 375.9379,46.212999999999994 C 378.734634103533,45.70630409902919 382.2490508366835,50.603314444983106 385.244,54.6597 C 388.23894916331653,58.716085555016896 391.3446879648328,67.3597111708755 394.55010000000004,74.2048 C 397.75551203516727,81.04988882912451 400.5914471667018,93.87284391946336 403.85620000000006,101.4859 C 407.1209528332983,109.09895608053664 410.0895510739465,121.09147510770491 413.1623,126.1975 C 416.23504892605354,131.3035248922951 419.67474558262603,136.89290979319514 422.46840000000003,136.5851 C 425.26205441737403,136.27729020680488 428.95044278373507,125.38274064624278 431.77450000000005,124.03790000000001 C 434.598557216265,122.69305935375723 438.2073485919568,124.91525524655276 441.0806,127.1816 C 443.9538514080432,129.44794475344725 447.59413731347104,140.00548601363016 450.3867,139.8107 C 453.179262686529,139.61591398636983 458.1953254183418,127.84299277750846 459.69280000000003,125.8148" class="chart__sparkline"></path>
                                            <circle data-v-45bb570a="" cx="13" cy="132.8674" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="22.3061" cy="147" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="31.6122" cy="65.7581" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="40.9183" cy="42.1399" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="50.2244" cy="64.7466" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="59.5305" cy="107.2264" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="68.8366" cy="84.5924" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="78.1427" cy="45.310900000000004" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="87.4488" cy="112.22890000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="96.7549" cy="102.93469999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="106.061" cy="125.8694" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="115.36710000000001" cy="134.2889" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="124.67320000000001" cy="134.1795" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="133.97930000000002" cy="132.7034" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="143.2854" cy="108.5386" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="152.5915" cy="110.2334" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="161.8976" cy="101.4039" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="171.20370000000003" cy="80.328" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="180.5098" cy="104.1922" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="189.8159" cy="78.4419" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="199.122" cy="83.17099999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="208.42810000000003" cy="78.4145" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="217.73420000000002" cy="13" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="227.0403" cy="35.224000000000004" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="236.34640000000002" cy="34.239900000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="245.65250000000003" cy="59.8262" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="254.95860000000002" cy="84.81110000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="264.2647" cy="75.2709" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="273.5708" cy="63.133799999999994" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="282.87690000000003" cy="64.3639" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="292.183" cy="105.8323" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="301.4891" cy="78.9612" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="310.7952" cy="39.8437" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="320.10130000000004" cy="82.3509" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="329.40740000000005" cy="59.36150000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="338.7135" cy="59.744200000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="348.0196" cy="76.0636" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="357.32570000000004" cy="58.3227" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="366.6318" cy="58.21339999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="375.9379" cy="46.212999999999994" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="385.244" cy="54.6597" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="394.55010000000004" cy="74.2048" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="403.85620000000006" cy="101.4859" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="413.1623" cy="126.1975" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="422.46840000000003" cy="136.5851" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="431.77450000000005" cy="124.03790000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="441.0806" cy="127.1816" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="450.3867" cy="139.8107" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="459.69280000000003" cy="125.8148" r="6" class="chart__circle"></circle>
                                            <path data-v-45bb570a="" d="M -50,0 L-50,160" class="chart__line"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="graphics__slide-volume">
                                <%
                                    out.println("$" + coins.get(2).get("quote_volume"));
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="graphics__slide ">
                            <%
                                out.println("<a class=\"graphics__slide-link\" href=\"trading?symbol=" + coins.get(3).get("symbol") + "\">");
                            %>
                            <div class="graphics__slide-info">
                                <div class="graphics__slide-container">
                                    <div class="graphics__slide-img">
                                        <%
                                            out.println("<img src=\"" + coins.get(3).get("image") + "\" alt=\"\">");
                                        %>
                                    </div>
                                    <div class="graphics__slide-box">
                                        <div class="graphics__slide-name">
                                            <%
                                                out.println(coins.get(3).get("name"));
                                            %>
                                        </div>
                                        <div class="graphics__slide-date">
                                            <%
                                                out.println(date);
                                            %>
                                        </div>
                                    </div>
                                    <div class="graphics__slide-button">
                                    <span>
                                    BUY
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="graphics__slide-prise">
                                <%
                                    out.println("$" + coins.get(3).get("price"));
                                %>
                            </div>
                            <%
                                out.println(String.format("<div class=\"graphics__slide-percent-%s\">\n" +
                                                "                                    $%s (%s%%)\n" +
                                                "                                </div>", (double) coins.get(3).get("price_change") > 0 ? "green" : "red",
                                        coins.get(3).get("price_change"), coins.get(3).get("price_change_percent")));
                            %>
                            </a>
                            <div class="graphics__slide-schedule">
                                <div data-v-45bb570a="" data-v-486e7f86="" class="sparkline-chart-wrapper currency__chart">
                                    <svg data-v-45bb570a="" viewbox="0 0 475 160" class="chart chart--ltc chart--light">
                                        <g data-v-45bb570a="">
                                            <path data-v-45bb570a="" d="M 13,123.1334 C 14.519235881988164,125.45729780801666 19.178364339159504,144.96532973080366 22.3061,139.1334 C 25.433835660840497,133.30147026919633 28.42081244784827,89.79643891920794 31.6122,83.1335 C 34.80358755215173,76.47056108079205 37.93748150208493,89.67228829491475 40.9183,93.5335 C 43.89911849791507,97.39471170508526 47.15201502661256,104.69891363555222 50.2244,109.8001 C 53.296784973387446,114.90128636444778 56.717098627622335,127.51432626134576 59.5305,128.6 C 62.34390137237767,129.68567373865423 65.68621564238452,123.52864102940427 68.8366,117.4001 C 71.9869843576155,111.27155897059572 75.34908956164678,86.29614035511287 78.1427,86.6002 C 80.93631043835323,86.90425964488713 84.28781131731945,113.26635861691776 87.4488,119.5334 C 90.60978868268056,125.80044138308224 93.91955599201333,127.94887928212533 96.7549,129.5334 C 99.59024400798668,131.11792071787465 103.17244674664849,128.08704905508438 106.061,130.6 C 108.94955325335152,133.1129509449156 112.57509543870458,146.90499327060388 115.36710000000001,147 C 118.15910456129544,147.09500672939612 121.68813204601075,135.1868024041556 124.67320000000001,131.26670000000001 C 127.65826795398927,127.34659759584443 131.08453609418763,122.54357805494773 133.97930000000002,119.9334 C 136.87406390581242,117.32322194505228 140.4017414765181,115.56864185018144 143.2854,113.1334 C 146.1690585234819,110.69815814981855 149.63723496960776,106.48879555552308 152.5915,103.0001 C 155.54576503039223,99.51140444447692 158.80586358242863,94.35787146520714 161.8976,89.0001 C 164.9893364175714,83.64232853479287 168.38093193007333,64.88464111788852 171.20370000000003,66.2002 C 174.02646806992672,67.51575888211147 177.65823627973893,96.3071395941302 180.5098,98.20009999999999 C 183.3613637202611,100.09306040586978 186.94994941192382,81.54454595521125 189.8159,79.4002 C 192.68185058807617,77.25585404478875 196.31527420377176,84.16134706623627 199.122,83.2668 C 201.92872579622826,82.37225293376373 205.40567601394042,77.5646945113921 208.42810000000003,73.1335 C 211.45052398605964,68.70230548860789 214.8750110948048,54.76183380144733 217.73420000000002,52.733599999999996 C 220.59338890519524,50.70536619855266 224.24054636893584,58.353603097542226 227.0403,59.00020000000001 C 229.84005363106417,59.64679690245779 233.5041813598813,55.54756642251666 236.34640000000002,57.26690000000001 C 239.18861864011873,58.986233577483354 242.46415897553163,64.37686819032962 245.65250000000003,71.0002 C 248.84084102446843,77.6235318096704 251.9635640196072,98.54252089106356 254.95860000000002,102.6001 C 257.95363598039285,106.65767910893643 261.24662970205924,103.3722602928058 264.2647,99.0001 C 267.2827702979408,94.6279397071942 270.57719208643084,76.50483794018879 273.5708,72.4669 C 276.5644079135692,68.4289620598112 279.9143224803401,67.52726933775647 282.87690000000003,71.1335 C 285.83947751965997,74.73973066224353 289.3845624602091,97.98955388692768 292.183,97.40010000000001 C 294.9814375397909,96.81064611307234 297.84739800733075,79.44235261706707 301.4891,67.0002 C 305.13080199266926,54.55804738293294 307.75379835386855,17.687484013446532 310.7952,13.00030000000001 C 313.8366016461315,8.313115986553488 317.29203455190355,33.76265077834562 320.10130000000004,34.733599999999996 C 322.9105654480965,35.70454922165437 326.6130636283668,20.161402743124818 329.40740000000005,19.800299999999993 C 332.20173637163333,19.43919725687517 335.80474637408764,29.375929788317094 338.7135,32.2003 C 341.6222536259124,35.0246702116829 345.2276582891335,39.47629626338725 348.0196,39.4003 C 350.81154171086655,39.324303736612755 354.45629592082184,33.86945589724756 357.32570000000004,31.667 C 360.19510407917824,29.464544102752445 363.8262766697085,24.92336066706143 366.6318,24.066999999999993 C 369.4373233302915,23.210639332938555 372.9905069352592,22.2762009096796 375.9379,25.667 C 378.88529306474084,29.057799090320405 382.2374870657355,43.31878001272891 385.244,47.53360000000001 C 388.2505129342646,51.74841998727111 391.70065962187834,52.879257830805045 394.55010000000004,54.733599999999996 C 397.39954037812174,56.587942169194946 400.9237257963419,57.2912408882557 403.85620000000006,60.466899999999995 C 406.7886742036582,63.64255911174429 410.1543469546111,72.49902224874651 413.1623,76.7335 C 416.1702530453889,80.9679777512535 419.62209538926027,87.87034626783587 422.46840000000003,89.6668 C 425.3147046107398,91.46325373216412 428.92922701984656,87.48962909732673 431.77450000000005,89.2668 C 434.6197729801535,91.04397090267328 438.14002287759763,98.77381944492474 441.0806,102.0668 C 444.0211771224024,105.35978055507526 447.5680046286253,110.84710399184233 450.3867,112.0668 C 453.2053953713747,113.28649600815767 458.295208091683,110.80918788835503 459.69280000000003,110.6001" class="chart__sparkline"></path>
                                            <circle data-v-45bb570a="" cx="13" cy="123.1334" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="22.3061" cy="139.1334" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="31.6122" cy="83.1335" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="40.9183" cy="93.5335" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="50.2244" cy="109.8001" r="6" class="chart__circle chart__circle--active"></circle>
                                            <circle data-v-45bb570a="" cx="59.5305" cy="128.6" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="68.8366" cy="117.4001" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="78.1427" cy="86.6002" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="87.4488" cy="119.5334" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="96.7549" cy="129.5334" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="106.061" cy="130.6" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="115.36710000000001" cy="147" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="124.67320000000001" cy="131.26670000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="133.97930000000002" cy="119.9334" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="143.2854" cy="113.1334" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="152.5915" cy="103.0001" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="161.8976" cy="89.0001" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="171.20370000000003" cy="66.2002" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="180.5098" cy="98.20009999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="189.8159" cy="79.4002" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="199.122" cy="83.2668" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="208.42810000000003" cy="73.1335" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="217.73420000000002" cy="52.733599999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="227.0403" cy="59.00020000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="236.34640000000002" cy="57.26690000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="245.65250000000003" cy="71.0002" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="254.95860000000002" cy="102.6001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="264.2647" cy="99.0001" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="273.5708" cy="72.4669" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="282.87690000000003" cy="71.1335" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="292.183" cy="97.40010000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="301.4891" cy="67.0002" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="310.7952" cy="13.00030000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="320.10130000000004" cy="34.733599999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="329.40740000000005" cy="19.800299999999993" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="338.7135" cy="32.2003" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="348.0196" cy="39.4003" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="357.32570000000004" cy="31.667" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="366.6318" cy="24.066999999999993" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="375.9379" cy="25.667" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="385.244" cy="47.53360000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="394.55010000000004" cy="54.733599999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="403.85620000000006" cy="60.466899999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="413.1623" cy="76.7335" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="422.46840000000003" cy="89.6668" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="431.77450000000005" cy="89.2668" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="441.0806" cy="102.0668" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="450.3867" cy="112.0668" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="459.69280000000003" cy="110.6001" r="6" class="chart__circle"></circle>
                                            <path data-v-45bb570a="" d="M 46.97802197802198,0 L46.97802197802198,160" class="chart__line"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="graphics__slide-volume">
                                <%
                                    out.println("$" + coins.get(3).get("quote_volume"));
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="graphics__slide ">
                            <%
                                out.println("<a class=\"graphics__slide-link\" href=\"trading?symbol=" + coins.get(4).get("symbol") + "\">");
                            %>
                            <div class="graphics__slide-info">
                                <div class="graphics__slide-container">
                                    <div class="graphics__slide-img">
                                        <%
                                            out.println("<img src=\"" + coins.get(4).get("image") + "\" alt=\"\">");
                                        %>
                                    </div>
                                    <div class="graphics__slide-box">
                                        <div class="graphics__slide-name">
                                            <%
                                                out.println(coins.get(4).get("name"));
                                            %>
                                        </div>
                                        <div class="graphics__slide-date">
                                            <%
                                                out.println(date);
                                            %>
                                        </div>
                                    </div>
                                    <div class="graphics__slide-button">
                                    <span>
                                    BUY
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="graphics__slide-prise">
                                <%
                                    out.println("$" + coins.get(4).get("price"));
                                %>
                            </div>
                            <%
                                out.println(String.format("<div class=\"graphics__slide-percent-%s\">\n" +
                                                "                                    $%s (%s%%)\n" +
                                                "                                </div>", (double) coins.get(4).get("price_change") > 0 ? "green" : "red",
                                        coins.get(4).get("price_change"), coins.get(4).get("price_change_percent")));
                            %>
                            </a>
                            <div class="graphics__slide-schedule">
                                <div data-v-45bb570a="" data-v-486e7f86="" class="sparkline-chart-wrapper currency__chart">
                                    <svg data-v-45bb570a="" viewbox="0 0 475 160" class="chart chart--link chart--light">
                                        <g data-v-45bb570a="">
                                            <path data-v-45bb570a="" d="M 13,127.2436 C 14.412173520649908,127.91928012431937 19.298090750684295,136.20324463167785 22.3061,131.968 C 25.314109249315706,127.73275536832213 28.580826680323987,102.59067144863376 31.6122,98.0385 C 34.643573319676015,93.48632855136624 38.02038277575196,97.95639352303692 40.9183,100.6154 C 43.81621722424804,103.27440647696307 47.27541199803205,113.09281730639947 50.2244,116.5064 C 53.17338800196796,119.91998269360053 56.69129992694962,122.57621402203671 59.5305,124.2372 C 62.36970007305039,125.8981859779633 65.97346859655373,130.19893052441637 68.8366,128.1026 C 71.69973140344628,126.00626947558364 75.34734858462727,109.20600912856939 78.1427,109.6346 C 80.93805141537274,110.06319087143062 84.45924880651634,127.12695440799075 87.4488,131.109 C 90.43835119348367,135.09104559200927 93.94932000543145,136.2636069393332 96.7549,137.1218 C 99.56047999456857,137.97999306066683 103.23385503527743,135.7086156913397 106.061,137.1218 C 108.88814496472258,138.5349843086603 112.55298641777321,148.1044446747695 115.36710000000001,147 C 118.1812135822268,145.8955553252305 121.81006859655373,131.48733052441636 124.67320000000001,129.391 C 127.53633140344628,127.29466947558363 131.17728327914025,133.13269196229953 133.97930000000002,132.3974 C 136.7813167208598,131.66210803770048 140.44298776927616,125.9602340116003 143.2854,124.2372 C 146.12781223072386,122.5141659883997 149.69762517434515,122.96814774114836 152.5915,120.37180000000001 C 155.48537482565484,117.77545225885166 158.77051508214706,112.0220898696946 161.8976,106.1987 C 165.02468491785297,100.37531013030541 168.4112188302737,80.61311125571126 171.20370000000003,80.4295 C 173.99618116972636,80.24588874428875 177.65383084010398,102.93857434002024 180.5098,104.9103 C 183.36576915989605,106.88202565997977 186.98875503527742,95.58628430866032 189.8159,94.1731 C 192.64304496472258,92.75991569133969 196.31998327914025,95.76739196229951 199.122,95.0321 C 201.92401672085978,94.29680803770049 205.40610748065782,93.44464946456658 208.42810000000003,89.0193 C 211.45009251934223,84.59395053543342 214.9352444220801,65.1510366576426 217.73420000000002,64.5385 C 220.53315557791993,63.925963342357385 224.16977928277745,82.50331239220034 227.0403,84.7244 C 229.91082071722255,86.94548760779966 233.54998219458426,79.51011847893729 236.34640000000002,80 C 239.14281780541577,80.48988152106271 242.72099199245707,84.99871110470755 245.65250000000003,88.1603 C 248.584008007543,91.32188889529246 252.12559312995495,100.36690463254524 254.95860000000002,101.9039 C 257.7916068700451,103.44089536745474 261.38270807286517,101.30604593703953 264.2647,98.89750000000001 C 267.14669192713484,96.48895406296049 270.7315999269496,86.81488597796329 273.5708,85.1539 C 276.4100000730504,83.4929140220367 279.9830261111692,84.70496684686978 282.87690000000003,87.3013 C 285.7707738888309,89.89763315313022 289.39088029637475,103.31471173157702 292.183,103.1923 C 294.97511970362524,103.06988826842299 298.45772777493863,90.99445668092078 301.4891,86.4423 C 304.5204722250614,81.89014331907923 308.00156604940463,72.14587017345809 310.7952,71.8398 C 313.5888339505954,71.5337298265419 317.3023444220801,84.9074366576426 320.10130000000004,84.2949 C 322.90025557791995,83.68236334235739 326.5012831491305,70.32935749280121 329.40740000000005,67.5449 C 332.31351685086963,64.76044250719879 335.90792000543144,64.10980693933318 338.7135,64.968 C 341.5190799945686,65.82619306066682 345.02545552227343,77.60301973030863 348.0196,73.5577 C 351.0137444777266,69.51238026969136 354.0810045687866,44.405222256698295 357.32570000000004,37.0513 C 360.57039543121346,29.6973777433017 363.67838405631943,26.78433687993343 366.6318,23.307699999999997 C 369.58521594368057,19.831063120066563 373.1260881150535,14.042907702778223 375.9379,13.000100000000003 C 378.7497118849465,11.957292297221786 382.29941850621526,12.655960176421488 385.244,16.00649999999999 C 388.1885814937848,19.35703982357849 391.53278076235773,31.830436357868336 394.55010000000004,36.192400000000006 C 397.56741923764235,40.554363642131676 400.8893716352544,42.40460721290048 403.85620000000006,46.0706 C 406.8230283647457,49.73659278709952 410.20888405631945,58.05546312006657 413.1623,61.5321 C 416.1157159436806,65.00873687993344 419.6764975364992,70.06059572055028 422.46840000000003,70.1218 C 425.26030246350086,70.1830042794497 428.95546864385324,60.733784092438455 431.77450000000005,61.961600000000004 C 434.59353135614685,63.18941590756155 438.18268277575197,76.05259352303693 441.0806,78.7116 C 443.97851722424804,81.37060647696308 447.5877444220801,81.04203665764261 450.3867,80.4295 C 453.18565557791993,79.8169633423574 458.2715938846381,75.27821700580016 459.69280000000003,74.4167" class="chart__sparkline"></path>
                                            <circle data-v-45bb570a="" cx="13" cy="127.2436" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="22.3061" cy="131.968" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="31.6122" cy="98.0385" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="40.9183" cy="100.6154" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="50.2244" cy="116.5064" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="59.5305" cy="124.2372" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="68.8366" cy="128.1026" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="78.1427" cy="109.6346" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="87.4488" cy="131.109" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="96.7549" cy="137.1218" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="106.061" cy="137.1218" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="115.36710000000001" cy="147" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="124.67320000000001" cy="129.391" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="133.97930000000002" cy="132.3974" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="143.2854" cy="124.2372" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="152.5915" cy="120.37180000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="161.8976" cy="106.1987" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="171.20370000000003" cy="80.4295" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="180.5098" cy="104.9103" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="189.8159" cy="94.1731" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="199.122" cy="95.0321" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="208.42810000000003" cy="89.0193" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="217.73420000000002" cy="64.5385" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="227.0403" cy="84.7244" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="236.34640000000002" cy="80" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="245.65250000000003" cy="88.1603" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="254.95860000000002" cy="101.9039" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="264.2647" cy="98.89750000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="273.5708" cy="85.1539" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="282.87690000000003" cy="87.3013" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="292.183" cy="103.1923" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="301.4891" cy="86.4423" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="310.7952" cy="71.8398" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="320.10130000000004" cy="84.2949" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="329.40740000000005" cy="67.5449" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="338.7135" cy="64.968" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="348.0196" cy="73.5577" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="357.32570000000004" cy="37.0513" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="366.6318" cy="23.307699999999997" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="375.9379" cy="13.000100000000003" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="385.244" cy="16.00649999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="394.55010000000004" cy="36.192400000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="403.85620000000006" cy="46.0706" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="413.1623" cy="61.5321" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="422.46840000000003" cy="70.1218" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="431.77450000000005" cy="61.961600000000004" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="441.0806" cy="78.7116" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="450.3867" cy="80.4295" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="459.69280000000003" cy="74.4167" r="6" class="chart__circle"></circle>
                                            <path data-v-45bb570a="" d="M -50,0 L-50,160" class="chart__line"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="graphics__slide-volume">
                                <%
                                    out.println("$" + coins.get(4).get("quote_volume"));
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="graphics__slide ">
                            <%
                                out.println("<a class=\"graphics__slide-link\" href=\"trading?symbol=" + coins.get(5).get("symbol") + "\">");
                            %>
                            <div class="graphics__slide-info">
                                <div class="graphics__slide-container">
                                    <div class="graphics__slide-img">
                                        <%
                                            out.println("<img src=\"" + coins.get(5).get("image") + "\" alt=\"\">");
                                        %>
                                    </div>
                                    <div class="graphics__slide-box">
                                        <div class="graphics__slide-name">
                                            <%
                                                out.println(coins.get(5).get("name"));
                                            %>
                                        </div>
                                        <div class="graphics__slide-date">
                                            <%
                                                out.println(date);
                                            %>
                                        </div>
                                    </div>
                                    <div class="graphics__slide-button">
                                    <span>
                                    BUY
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="graphics__slide-prise">
                                <%
                                    out.println("$" + coins.get(5).get("price"));
                                %>
                            </div>
                            <%
                                out.println(String.format("<div class=\"graphics__slide-percent-%s\">\n" +
                                                "                                    $%s (%s%%)\n" +
                                                "                                </div>", (double) coins.get(5).get("price_change") > 0 ? "green" : "red",
                                        coins.get(5).get("price_change"), coins.get(5).get("price_change_percent")));
                            %>
                            </a>
                            <div class="graphics__slide-schedule">
                                <div data-v-45bb570a="" data-v-486e7f86="" class="sparkline-chart-wrapper currency__chart">
                                    <svg data-v-45bb570a="" viewbox="0 0 475 160" class="chart chart--matic chart--light">
                                        <g data-v-45bb570a="">
                                            <path data-v-45bb570a="" d="M 13,130.4751 C 14.397224760426683,130.29049082823272 19.255873060791394,133.98556127708576 22.3061,129.18 C 25.356326939208607,124.37443872291425 28.470568371780747,103.42154980869567 31.6122,97.4075 C 34.75383162821926,91.39345019130432 38.060170020224135,85.94225809505141 40.9183,87.952 C 43.77642997977587,89.96174190494858 47.14018059243297,106.15503898671938 50.2244,111.41329999999999 C 53.30861940756703,116.67156101328061 56.68980566417571,122.38977520263288 59.5305,124.0798 C 62.3711943358243,125.76982479736714 65.87817358368763,126.75815081769122 68.8366,123.2105 C 71.79502641631238,119.66284918230878 75.35038752578103,99.38718690680474 78.1427,99.5452 C 80.93501247421898,99.70321309319525 84.32542569039755,118.54462552484208 87.4488,124.3193 C 90.57217430960246,130.09397447515792 93.94495713868977,138.16841443064692 96.7549,139.1589 C 99.56484286131024,140.14938556935306 103.24627816680098,130.13532331192792 106.061,131.2556 C 108.87572183319904,132.37587668807205 112.56047557861218,146.10861777992295 115.36710000000001,147 C 118.17372442138783,147.89138222007705 121.80019882715119,139.76241505726344 124.67320000000001,137.5002 C 127.54620117284882,135.23798494273657 130.9835671516298,135.32275726525552 133.97930000000002,131.2556 C 136.97503284837023,127.18844273474447 139.9705362427419,117.69419959514835 143.2854,109.4353 C 146.60026375725812,101.17640040485165 149.04879324097172,86.10028965068136 152.5915,74.9219 C 156.13420675902827,63.743510349318626 158.93898962158028,37.057851634973495 161.8976,33.5076 C 164.85621037841975,29.9573483650265 168.0861292475609,44.67118927710224 171.20370000000003,50.369600000000005 C 174.32127075243915,56.06801072289777 177.5683600055898,69.30139395456338 180.5098,72.6068 C 183.45123999441023,75.91220604543663 187.02346501589804,73.07733073327965 189.8159,73.2543 C 192.60833498410196,73.43126926672035 196.31541677319575,74.73869339707751 199.122,73.8486 C 201.92858322680428,72.9585066029225 205.4517289731929,70.81808184581493 208.42810000000003,67.0187 C 211.40447102680716,63.21931815418507 214.9419756747829,47.74493446919674 217.73420000000002,47.60209999999999 C 220.52642432521714,47.45926553080324 224.17943358522157,63.95905022038233 227.0403,66.0164 C 229.90116641477843,68.07374977961767 233.53716214019548,60.96595336080527 236.34640000000002,61.936099999999996 C 239.15563785980456,62.90624663919472 242.64722521400145,68.61289340673638 245.65250000000003,72.8108 C 248.6577747859986,77.00870659326362 252.15026841286178,89.94453544927137 254.95860000000002,90.888 C 257.76693158713823,91.83146455072865 261.2909509639816,83.18183251034435 264.2647,79.419 C 267.23844903601844,75.65616748965564 270.7533568130376,66.07896268857618 273.5708,64.8899 C 276.3882431869624,63.70083731142381 279.9564877898937,68.10025708426933 282.87690000000003,71.0989 C 285.7973122101064,74.09754291573067 289.2830690052336,82.99128677391393 292.183,85.6813 C 295.0829309947664,88.37131322608606 298.56419868746246,92.84408098067712 301.4891,89.7792 C 304.41400131253755,86.71431901932289 307.9495818355287,66.22113661320238 310.7952,64.4375 C 313.64081816447134,62.653863386797624 317.30428716930714,77.85558521804444 320.10130000000004,77.3345 C 322.89831283069293,76.81341478195557 326.6033838249823,61.58929717848862 329.40740000000005,60.783 C 332.2114161750178,59.97670282151138 335.8927226994518,70.41492431217674 338.7135,71.6843 C 341.53427730054824,72.95367568782325 345.17844141525467,71.36088401982711 348.0196,69.6619 C 350.8607585847454,67.9629159801729 354.45842019514885,61.991901240035084 357.32570000000004,59.825100000000006 C 360.19297980485123,57.65829875996493 363.4264005565456,61.41892541464312 366.6318,54.574 C 369.8371994434544,47.72907458535688 373.0050006530278,16.181844598445238 375.9379,13 C 378.8707993469722,9.818155401554764 382.11932405216794,26.74013279193304 385.244,32.53189999999999 C 388.3686759478321,38.323667208066944 391.55332122705045,48.64747465467886 394.55010000000004,52.729 C 397.54687877294964,56.81052534532114 400.8778586744252,56.86750129825553 403.85620000000006,60.6943 C 406.8345413255749,64.52109870174446 410.16390207350537,75.05805003884342 413.1623,79.1618 C 416.16069792649466,83.26554996115658 419.67656987691237,89.00497774996293 422.46840000000003,89.0075 C 425.2602301230877,89.01002225003707 428.87884602770936,76.55550448520636 431.77450000000005,79.1795 C 434.67015397229073,81.80349551479365 438.1519774991726,104.11603981462383 441.0806,107.2355 C 444.00922250082743,110.35496018537619 447.56597711092064,102.06399596715858 450.3867,100.7959 C 453.2074228890794,99.52780403284143 458.292342537427,98.71220098982909 459.69280000000003,98.3655" class="chart__sparkline"></path>
                                            <circle data-v-45bb570a="" cx="13" cy="130.4751" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="22.3061" cy="129.18" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="31.6122" cy="97.4075" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="40.9183" cy="87.952" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="50.2244" cy="111.41329999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="59.5305" cy="124.0798" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="68.8366" cy="123.2105" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="78.1427" cy="99.5452" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="87.4488" cy="124.3193" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="96.7549" cy="139.1589" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="106.061" cy="131.2556" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="115.36710000000001" cy="147" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="124.67320000000001" cy="137.5002" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="133.97930000000002" cy="131.2556" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="143.2854" cy="109.4353" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="152.5915" cy="74.9219" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="161.8976" cy="33.5076" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="171.20370000000003" cy="50.369600000000005" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="180.5098" cy="72.6068" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="189.8159" cy="73.2543" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="199.122" cy="73.8486" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="208.42810000000003" cy="67.0187" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="217.73420000000002" cy="47.60209999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="227.0403" cy="66.0164" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="236.34640000000002" cy="61.936099999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="245.65250000000003" cy="72.8108" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="254.95860000000002" cy="90.888" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="264.2647" cy="79.419" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="273.5708" cy="64.8899" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="282.87690000000003" cy="71.0989" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="292.183" cy="85.6813" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="301.4891" cy="89.7792" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="310.7952" cy="64.4375" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="320.10130000000004" cy="77.3345" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="329.40740000000005" cy="60.783" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="338.7135" cy="71.6843" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="348.0196" cy="69.6619" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="357.32570000000004" cy="59.825100000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="366.6318" cy="54.574" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="375.9379" cy="13" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="385.244" cy="32.53189999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="394.55010000000004" cy="52.729" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="403.85620000000006" cy="60.6943" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="413.1623" cy="79.1618" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="422.46840000000003" cy="89.0075" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="431.77450000000005" cy="79.1795" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="441.0806" cy="107.2355" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="450.3867" cy="100.7959" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="459.69280000000003" cy="98.3655" r="6" class="chart__circle"></circle>
                                            <path data-v-45bb570a="" d="M -50,0 L-50,160" class="chart__line"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="graphics__slide-volume">
                                <%
                                    out.println("$" + coins.get(5).get("quote_volume"));
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="graphics__slide ">
                            <%
                                out.println("<a class=\"graphics__slide-link\" href=\"trading?symbol=" + coins.get(6).get("symbol") + "\">");
                            %>
                            <div class="graphics__slide-info">
                                <div class="graphics__slide-container">
                                    <div class="graphics__slide-img">
                                        <%
                                            out.println("<img src=\"" + coins.get(6).get("image") + "\" alt=\"\">");
                                        %>
                                    </div>
                                    <div class="graphics__slide-box">
                                        <div class="graphics__slide-name">
                                            <%
                                                out.println(coins.get(6).get("name"));
                                            %>
                                        </div>
                                        <div class="graphics__slide-date">
                                            <%
                                                out.println(date);
                                            %>
                                        </div>
                                    </div>
                                    <div class="graphics__slide-button">
                                    <span>
                                    BUY
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="graphics__slide-prise">
                                <%
                                    out.println("$" + coins.get(6).get("price"));
                                %>
                            </div>
                            <%
                                out.println(String.format("<div class=\"graphics__slide-percent-%s\">\n" +
                                                "                                    $%s (%s%%)\n" +
                                                "                                </div>", (double) coins.get(6).get("price_change") > 0 ? "green" : "red",
                                        coins.get(6).get("price_change"), coins.get(6).get("price_change_percent")));
                            %>
                            </a>
                            <div class="graphics__slide-schedule">
                                <div data-v-45bb570a="" data-v-486e7f86="" class="sparkline-chart-wrapper currency__chart">
                                    <svg data-v-45bb570a="" viewbox="0 0 475 160" class="chart chart--xlm chart--light">
                                        <g data-v-45bb570a="">
                                            <path data-v-45bb570a="" d="M 13,131.7109 C 14.51145720398607,133.9298183921381 19.018751661905288,154.90452737751133 22.3061,147 C 25.593448338094714,139.09547262248867 28.054101011382045,89.13370969464734 31.6122,77.7587 C 35.17029898861796,66.38369030535267 38.041529528060664,67.42983769569793 40.9183,69.7539 C 43.79507047193934,72.07796230430208 47.176909001086834,89.15939534546526 50.2244,93.92830000000001 C 53.27189099891317,98.69720465453476 56.72701066400803,103.36164101333723 59.5305,102.5735 C 62.33398933599198,101.78535898666276 65.56033277914464,96.16664247414641 68.8366,88.405 C 72.11286722085536,80.64335752585359 75.27298369948934,47.374127006125356 78.1427,49.5818 C 81.01241630051067,51.78947299387465 84.14758472805575,95.69100792139133 87.4488,103.77420000000001 C 90.75001527194426,111.85739207860868 93.95585375906798,104.11830630001253 96.7549,104.7348 C 99.55394624093204,105.35129369998748 103.11126799141996,104.67260239184661 106.061,108.0968 C 109.01073200858005,111.5209976081534 112.57477721415914,128.26920511381414 115.36710000000001,128.4289 C 118.15942278584087,128.58859488618586 121.6848323591188,113.18311104971846 124.67320000000001,109.2174 C 127.66156764088122,105.25168895028153 131.02874298087676,104.48855855660433 133.97930000000002,101.0526 C 136.9298570191233,97.61664144339566 140.39477112291473,87.9888078511744 143.2854,85.44319999999999 C 146.1760288770853,82.89759214882558 149.76665924564296,84.72441447695753 152.5915,83.362 C 155.41634075435704,81.99958552304246 158.7168665754268,82.44196331228784 161.8976,75.9176 C 165.07833342457323,69.39323668771215 168.40591042005684,39.25463505599184 171.20370000000003,38.6953 C 174.0014895799432,38.135964944008165 177.65558949896308,70.05470761895455 180.5098,71.9952 C 183.36401050103694,73.93569238104544 186.91700548779215,54.89747083829435 189.8159,52.2234 C 192.71479451220785,49.54932916170564 196.24307906067102,55.783117493553846 199.122,53.424099999999996 C 202.000920939329,51.06508250644615 205.53298386807643,38.42924938705014 208.42810000000003,35.813599999999994 C 211.32321613192363,33.197950612949846 214.91810971479148,34.09803377403557 217.73420000000002,35.253299999999996 C 220.55029028520855,36.40856622596442 224.24016641064756,43.23615574968132 227.0403,43.898399999999995 C 229.84043358935244,44.560644250318674 233.4007771848869,36.530634833045355 236.34640000000002,39.896100000000004 C 239.29202281511314,43.261565166954654 242.48545054563593,60.846297817105615 245.65250000000003,67.1924 C 248.81954945436414,73.53850218289439 252.12049975112848,81.72259175107136 254.95860000000002,83.362 C 257.79670024887156,85.00140824892863 261.28314523864594,82.51062791666676 264.2647,78.6392 C 267.2462547613541,74.76777208333324 270.547884502061,61.06385154508859 273.5708,56.626000000000005 C 276.59371549793906,52.18814845491143 279.8390969735685,43.422101128554054 282.87690000000003,48.060900000000004 C 285.9147030264316,52.69969887144595 289.1696568956812,84.25718137339453 292.183,88.5651 C 295.19634310431877,92.87301862660547 298.2955709871822,84.44947096620531 301.4891,77.7587 C 304.6826290128178,71.0679290337947 307.9830563053544,43.82967276091977 310.7952,42.7778 C 313.60734369464564,41.72592723908023 317.3017191061914,69.75493308503899 320.10130000000004,70.3943 C 322.9008808938087,71.03366691496102 326.39058165853413,51.615661206372806 329.40740000000005,47.26049999999999 C 332.424218341466,42.90533879362718 335.89069799462806,39.059964236044536 338.7135,40.3763 C 341.53630200537197,41.692635763955465 345.22746555442,56.340409941407025 348.0196,56.465900000000005 C 350.81173444558004,56.591390058592985 354.39309284056424,44.4344938787943 357.32570000000004,41.2569 C 360.25830715943584,38.079306121205704 363.6340067775573,38.5482522937768 366.6318,34.452799999999996 C 369.6295932224427,30.357347706223198 373.058979060671,15.359017493553843 375.9379,13 C 378.81682093932903,10.640982506446157 382.316213252621,14.935773002338424 385.244,18.043000000000006 C 388.17178674737903,21.150226997661587 391.4157579809609,28.614331433742972 394.55010000000004,34.5329 C 397.6844420190392,40.45146856625702 400.6946154147059,52.3523822078621 403.85620000000006,58.6272 C 407.01778458529424,64.9020177921379 410.04513278009335,71.82539533627394 413.1623,77.5185 C 416.2794672199067,83.21160466372606 419.63490543397535,96.14360832457524 422.46840000000003,97.6906 C 425.3018945660247,99.23759167542477 428.96638085720645,87.38788247748688 431.77450000000005,88.325 C 434.58261914279365,89.26211752251312 438.1869855279545,101.66220765304261 441.0806,104.25450000000001 C 443.9742144720455,106.8467923469574 447.58254423001296,107.14674775854964 450.3867,106.3357 C 453.1908557699871,105.52465224145037 458.2572438639001,99.68656405743565 459.69280000000003,98.5711" class="chart__sparkline"></path>
                                            <circle data-v-45bb570a="" cx="13" cy="131.7109" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="22.3061" cy="147" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="31.6122" cy="77.7587" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="40.9183" cy="69.7539" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="50.2244" cy="93.92830000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="59.5305" cy="102.5735" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="68.8366" cy="88.405" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="78.1427" cy="49.5818" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="87.4488" cy="103.77420000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="96.7549" cy="104.7348" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="106.061" cy="108.0968" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="115.36710000000001" cy="128.4289" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="124.67320000000001" cy="109.2174" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="133.97930000000002" cy="101.0526" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="143.2854" cy="85.44319999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="152.5915" cy="83.362" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="161.8976" cy="75.9176" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="171.20370000000003" cy="38.6953" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="180.5098" cy="71.9952" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="189.8159" cy="52.2234" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="199.122" cy="53.424099999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="208.42810000000003" cy="35.813599999999994" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="217.73420000000002" cy="35.253299999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="227.0403" cy="43.898399999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="236.34640000000002" cy="39.896100000000004" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="245.65250000000003" cy="67.1924" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="254.95860000000002" cy="83.362" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="264.2647" cy="78.6392" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="273.5708" cy="56.626000000000005" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="282.87690000000003" cy="48.060900000000004" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="292.183" cy="88.5651" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="301.4891" cy="77.7587" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="310.7952" cy="42.7778" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="320.10130000000004" cy="70.3943" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="329.40740000000005" cy="47.26049999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="338.7135" cy="40.3763" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="348.0196" cy="56.465900000000005" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="357.32570000000004" cy="41.2569" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="366.6318" cy="34.452799999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="375.9379" cy="13" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="385.244" cy="18.043000000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="394.55010000000004" cy="34.5329" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="403.85620000000006" cy="58.6272" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="413.1623" cy="77.5185" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="422.46840000000003" cy="97.6906" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="431.77450000000005" cy="88.325" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="441.0806" cy="104.25450000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="450.3867" cy="106.3357" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="459.69280000000003" cy="98.5711" r="6" class="chart__circle"></circle>
                                            <path data-v-45bb570a="" d="M -50,0 L-50,160" class="chart__line"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="graphics__slide-volume">
                                <%
                                    out.println("$" + coins.get(6).get("quote_volume"));
                                %>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="graphics__slide ">
                            <%
                                out.println("<a class=\"graphics__slide-link\" href=\"trading?symbol=" + coins.get(7).get("symbol") + "\">");
                            %>
                            <div class="graphics__slide-info">
                                <div class="graphics__slide-container">
                                    <div class="graphics__slide-img">
                                        <%
                                            out.println("<img src=\"" + coins.get(7).get("image") + "\" alt=\"\">");
                                        %>
                                    </div>
                                    <div class="graphics__slide-box">
                                        <div class="graphics__slide-name">
                                            <%
                                                out.println(coins.get(7).get("name"));
                                            %>
                                        </div>
                                        <div class="graphics__slide-date">
                                            <%
                                                out.println(date);
                                            %>
                                        </div>
                                    </div>
                                    <div class="graphics__slide-button">
                                    <span>
                                    BUY
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="graphics__slide-prise">
                                <%
                                    out.println("$" + coins.get(7).get("price"));
                                %>
                            </div>
                            <%
                                out.println(String.format("<div class=\"graphics__slide-percent-%s\">\n" +
                                                "                                    $%s (%s%%)\n" +
                                                "                                </div>", (double) coins.get(7).get("price_change") > 0 ? "green" : "red",
                                        coins.get(7).get("price_change"), coins.get(7).get("price_change_percent")));
                            %>
                            </a>
                            <div class="graphics__slide-schedule">
                                <div data-v-45bb570a="" data-v-486e7f86="" class="sparkline-chart-wrapper currency__chart">
                                    <svg data-v-45bb570a="" viewbox="0 0 475 160" class="chart chart--bch chart--light">
                                        <g data-v-45bb570a="">
                                            <path data-v-45bb570a="" d="M 13,129.5299 C 14.413383513387803,130.23237310406418 18.704975408559214,146.3647615774198 22.3061,134.4404 C 25.90722459144079,122.51603842258022 28.06512503307744,59.83499434846827 31.6122,48.60080000000001 C 35.15927496692257,37.36660565153174 37.78691350532262,52.258678632043555 40.9183,58.13849999999999 C 44.04968649467738,64.01832136795643 46.83351259967302,79.68822968783918 50.2244,88.9237 C 53.615287400326984,98.15917031216081 56.464768342224275,116.0182587609513 59.5305,121.0309 C 62.59623165777573,126.04354123904871 65.45996672220443,132.44430763775878 68.8366,123.3917 C 72.21323327779558,114.33909236224123 75.23627683969728,62.155304272016544 78.1427,59.366200000000006 C 81.04912316030273,56.57709572798347 84.08202861468067,95.10696712327952 87.4488,104.033 C 90.81557138531934,112.95903287672049 93.89227565900495,118.09336391934139 96.7549,120.181 C 99.61752434099506,122.26863608065861 103.07856412774659,114.69205311346461 106.061,118.5757 C 109.04343587225343,122.45934688653539 112.39862318453025,150.6891093926778 115.36710000000001,147 C 118.33557681546976,143.3108906073222 120.67488520112894,110.063904575735 124.67320000000001,93.0788 C 128.67151479887107,76.09369542426501 130.8639020058741,37.83933590668163 133.97930000000002,32.1695 C 137.09469799412594,26.49966409331837 140.3789768396973,51.38329572798346 143.2854,54.172399999999996 C 146.19182316030273,56.96150427201653 149.7390128659073,49.61858237826636 152.5915,51.5282 C 155.44398713409268,53.437817621733636 159.0547193553588,69.21936774257615 161.8976,67.4874 C 164.74048064464122,65.75543225742383 168.37376603045055,37.96782249939451 171.20370000000003,39.440799999999996 C 174.0336339695495,40.913777500605484 177.66547825031864,76.02131940236517 180.5098,77.7806 C 183.35412174968138,79.53988059763485 186.92644099095585,54.24432253463731 189.8159,51.7171 C 192.70535900904414,49.1898774653627 196.26951206090948,62.12573210762388 199.122,60.2161 C 201.97448793909055,58.30646789237611 205.21821892510323,45.305073978999815 208.42810000000003,38.402 C 211.63798107489683,31.498926021000187 214.92585831173855,13.94336543584604 217.73420000000002,12.999599999999987 C 220.54254168826148,12.055834564153933 224.09725912293567,28.463273933158746 227.0403,31.791700000000006 C 229.98334087706434,35.120126066841266 233.3719612022975,32.26874531992139 236.34640000000002,36.0412 C 239.32083879770252,39.81365468007861 242.35896715410016,49.87097122158291 245.65250000000003,57.855199999999996 C 248.9460328458999,65.83942877841709 252.04852329902232,87.68477572718024 254.95860000000002,90.5291 C 257.86867670097774,93.37342427281976 261.2982026985695,81.25304631464037 264.2647,77.5917 C 267.2311973014305,73.93035368535963 270.7777088961151,64.9652738470083 273.5708,65.221 C 276.36389110388495,65.4767261529917 279.5309309843146,70.72713121458277 282.87690000000003,79.386 C 286.2228690156855,88.04486878541722 289.3884408302872,124.61852061866438 292.183,124.2416 C 294.9775591697128,123.86467938133563 297.6126402459334,92.17567702857667 301.4891,76.7418 C 305.3655597540666,61.307922971423324 307.96331642633913,21.312504976121282 310.7952,19.798699999999997 C 313.6270835736609,18.28489502387871 317.257700171094,64.4197696745386 320.10130000000004,66.1654 C 322.9448998289061,67.91103032546141 326.41287520082244,36.03115050393279 329.40740000000005,31.980599999999995 C 332.40192479917766,27.9300494960672 335.78384312963766,35.07861894115995 338.7135,38.2132 C 341.64315687036236,41.34778105884005 345.19998179590687,52.458298240219314 348.0196,53.700199999999995 C 350.8392182040932,54.94210175978068 354.3261080632503,51.021125198086935 357.32570000000004,46.900999999999996 C 360.3252919367498,42.78087480191306 363.7326001110661,27.954671565089225 366.6318,25.275899999999993 C 369.5309998889339,22.59712843491076 373.08001675203633,26.29227958275362 375.9379,28.297700000000006 C 378.7957832479637,30.303120417246394 382.11261350532266,33.37207863204357 385.244,39.251900000000006 C 388.3753864946774,45.131721367956445 391.6270403279187,65.58283911960609 394.55010000000004,68.6206 C 397.4731596720814,71.6583608803939 400.9524979344479,57.56277188043778 403.85620000000006,60.310500000000005 C 406.75990206555224,63.05822811956223 409.90469999304315,80.17540948042837 413.1623,87.6961 C 416.4199000069569,95.21679051957163 419.535895581316,108.50600117085064 422.46840000000003,111.68209999999999 C 425.40090441868404,114.85819882914934 428.93928493828804,108.11707697821879 431.77450000000005,109.699 C 434.60971506171205,111.2809230217812 438.1989289823231,120.32730893925256 441.0806,122.7307 C 443.9622710176769,125.13409106074744 447.5837818432349,127.18162824778858 450.3867,126.4136 C 453.18961815676516,125.64557175221142 458.2454279049722,118.6529358341925 459.69280000000003,117.348" class="chart__sparkline"></path>
                                            <circle data-v-45bb570a="" cx="13" cy="129.5299" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="22.3061" cy="134.4404" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="31.6122" cy="48.60080000000001" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="40.9183" cy="58.13849999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="50.2244" cy="88.9237" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="59.5305" cy="121.0309" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="68.8366" cy="123.3917" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="78.1427" cy="59.366200000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="87.4488" cy="104.033" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="96.7549" cy="120.181" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="106.061" cy="118.5757" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="115.36710000000001" cy="147" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="124.67320000000001" cy="93.0788" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="133.97930000000002" cy="32.1695" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="143.2854" cy="54.172399999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="152.5915" cy="51.5282" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="161.8976" cy="67.4874" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="171.20370000000003" cy="39.440799999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="180.5098" cy="77.7806" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="189.8159" cy="51.7171" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="199.122" cy="60.2161" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="208.42810000000003" cy="38.402" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="217.73420000000002" cy="12.999599999999987" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="227.0403" cy="31.791700000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="236.34640000000002" cy="36.0412" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="245.65250000000003" cy="57.855199999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="254.95860000000002" cy="90.5291" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="264.2647" cy="77.5917" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="273.5708" cy="65.221" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="282.87690000000003" cy="79.386" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="292.183" cy="124.2416" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="301.4891" cy="76.7418" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="310.7952" cy="19.798699999999997" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="320.10130000000004" cy="66.1654" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="329.40740000000005" cy="31.980599999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="338.7135" cy="38.2132" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="348.0196" cy="53.700199999999995" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="357.32570000000004" cy="46.900999999999996" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="366.6318" cy="25.275899999999993" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="375.9379" cy="28.297700000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="385.244" cy="39.251900000000006" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="394.55010000000004" cy="68.6206" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="403.85620000000006" cy="60.310500000000005" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="413.1623" cy="87.6961" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="422.46840000000003" cy="111.68209999999999" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="431.77450000000005" cy="109.699" r="6" class="chart__circle"></circle>
                                            <circle data-v-45bb570a="" cx="441.0806" cy="122.7307" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="450.3867" cy="126.4136" r="6" class="chart__circle">
                                            </circle>
                                            <circle data-v-45bb570a="" cx="459.69280000000003" cy="117.348" r="6" class="chart__circle"></circle>
                                            <path data-v-45bb570a="" d="M -50,0 L-50,160" class="chart__line"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="graphics__slide-volume">
                                <%
                                    out.println("$" + coins.get(7).get("quote_volume"));
                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slider__graphics-button-next"></div>
            <div class="slider__graphics-button-prev"></div>
            <div class="swiper-pagination-grafix"></div>
        </div>
    </section>
    <section class="statistics">
        <div class="container__main">
            <div class="statistics__items">
                <div class="statistics__items-names">
                    <div class="statistics__items-name statistics-name">
                        Name
                    </div>
                    <div class="statistics__items-name statistics-name">
                        Ticker
                    </div>
                    <div class="statistics__items-name statistics-name">
                        Price
                    </div>
                    <div class="statistics__items-name statistics-dynamics">
                        Dynamics
                    </div>
                </div>
                <%
                    for (Map<String, Object> coin : coins) {
                        String symbol = (String) coin.get("symbol");
                        String html = String.format("<a class=\"statistics__item\" href=\"trading?symbol=%s\">\n" +
                                "                    <div class=\"statistics__item-logo\">\n" +
                                "                        <img src=\"%s\" alt=\"\">\n" +
                                "                    </div>\n" +
                                "                    <div class=\"statistics__item-name statistics-name\">\n" +
                                "                        %s\n" +
                                "                    </div>\n" +
                                "                    <div class=\"statistics__item-ticker statistics-name\">\n" +
                                "                        %s\n" +
                                "                    </div>\n" +
                                "                    <div class=\"statistics__item-prise statistics-name\">\n" +
                                "                        $%s                    </div>\n" +
                                "                    <div class=\"statistics__item-dynamics statistics-dynamics\">\n" +
                                "                        <div class=\"statistics__dynamics-btn-%s\">\n" +
                                "                            %s%%\n" +
                                "                        </div>\n" +
                                "                    </div>\n" +
                                "                </a>", symbol, coin.get("image"), coin.get("name"), symbol, coin.get("price"), (double) coin.get("price_change_percent") > 0 ? "green" : "red", coin.get("price_change_percent"));
                        out.println(html);
                    }
                %>
            </div>
            <div class="statistics__item-link">
                <a href="trading">View more Markets</a>
            </div>
        </div>
    </section>
    <section class="benefits">
        <div class="container__main">
            <div class="benefits__wrapper">
                <div class="benefits__title">
                    The complete trading essentials,
                    unified in a single platform
                </div>
                <div class="benefits__container swiper">
                    <div class="benefits__items-wrapper swiper-wrapper">
                        <div class="benefits__item-box swiper-slide">
                            <div class="benefits__item-img-box">
                                <img class="benefits__item-img" src="assets/images/benefits-images/integrated-order.png" alt="">
                            </div>
                            <div class="benefits__item-des-box">
                                <div class="benefits__item-title">
                                    Integrated orders for spot and margin
                                </div>
                                <div class="benefits__item-des">
                                    Set take profit, stop loss, limit orders, and more advanced order types for spot and margin in one unified order interface with up to 5x leverage.
                                </div>
                            </div>
                        </div>
                        <div class="benefits__item-box swiper-slide">
                            <div class="benefits__item-img-box">
                                <img class="benefits__item-img" src="assets/images/benefits-images/deep-liquidity.png" alt="">
                            </div>
                            <div class="benefits__item-des-box">
                                <div class="benefits__item-title">
                                    Deep liquidity and order book depth
                                </div>
                                <div class="benefits__item-des">
                                    <%
                                        out.println(request.getAttribute("domain_exchange_name") + " offers best-in-class liquidity and order book depth allowing large trades to be executed with the least slippage.");
                                    %>
                                </div>
                            </div>
                        </div>
                        <div class="benefits__item-box swiper-slide">
                            <div class="benefits__item-img-box">
                                <img class="benefits__item-img" src="assets/images/benefits-images/customizable.png" alt="">
                            </div>
                            <div class="benefits__item-des-box">
                                <div class="benefits__item-title">
                                    Fully customizable workspaces
                                </div>
                                <div class="benefits__item-des">
                                    Customize trading trading canvases with drag-and-drop modules such as multi-charts and trading data widgets.
                                </div>
                            </div>
                        </div>
                        <div class="benefits__item-box swiper-slide">
                            <div class="benefits__item-img-box">
                                <img class="benefits__item-img" src="assets/images/benefits-images/zero-fee.png" alt="">
                            </div>
                            <div class="benefits__item-des-box">
                                <div class="benefits__item-title">
                                    Zero-fee trading
                                </div>
                                <div class="benefits__item-des">
                                    Unlock zero maker and taker spot trading fees by staking your coins in any invest plan.
                                </div>
                            </div>
                        </div>
                        <div class="benefits__item-box swiper-slide">
                            <div class="benefits__item-img-box">
                                <img class="benefits__item-img" src="assets/images/benefits-images/trade-futures.png" alt="">
                            </div>
                            <div class="benefits__item-des-box">
                                <div class="benefits__item-title">
                                    Trade futures with leverage
                                </div>
                                <div class="benefits__item-des">
                                    Futures trading and leverage will be enabled across a variety of major pairs.
                                </div>
                            </div>
                        </div>
                        <div class="benefits__item-box swiper-slide">
                            <div class="benefits__item-img-box">
                                <img class="benefits__item-img" src="assets/images/benefits-images/social.png" alt="">
                            </div>
                            <div class="benefits__item-des-box">
                                <div class="benefits__item-title">
                                    Social trading
                                </div>
                                <div class="benefits__item-des">
                                    Learn from profitable trading strategies and emulate successful traders with a record of proven profitability.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination-benefits"></div>
            </div>
        </div>
    </section>
    <section class="experienced">
        <div class="container__main">
            <div class="experienced__info">
                <div class="experienced__info-title">
                    For experienced traders
                </div>
                <div class="experienced__info-text">
                    <%
                        out.println("Trade like a pro on " + request.getAttribute("domain_exchange_name"));
                    %>
                </div>
            </div>
            <div class="experienced__items">
                <div class="experienced__item">
                    <div class="experienced__items-benefits">
                        Powerful
                    </div>
                    <div class="experienced__item-title">
                        API
                    </div>
                    <div class="experienced__item-text">
                        Customize your private functionality and
                        get more options
                    </div>
                </div>
                <div class="experienced__item">
                    <div class="experienced__items-benefits">
                        Leverage
                    </div>
                    <div class="experienced__item-title">
                        5x
                    </div>
                    <div class="experienced__item-text">
                        Increase your personal income a few
                        times faster
                    </div>
                </div>
                <div class="experienced__item">
                    <div class="experienced__items-benefits">
                        Accurate
                    </div>
                    <div class="experienced__item-title">
                        AML
                    </div>
                    <div class="experienced__item-text">
                        Make sure your addresses are not
                        involved in money laundering
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="advantage">
        <div class="container__main">
            <div class="advantage__items-wrapper">
                <div class="advantage__item-box">
                    <div class="advantage__img-box">
                        <img src="assets/images/advantage-images/1598367322-home-metrics-coins.svg" alt="" class="advantage__img">
                    </div>
                    <div class="advantage__content">
                        <div class="advantage__title">40+</div>
                        <div class="advantage__title-des">Coins</div>
                        <div class="advantage__des">
                            We offer a wide range of relevant coins on the market, which are curated with care by our experts.
                        </div>
                    </div>
                </div>
                <div class="advantage__item-box">
                    <div class="advantage__img-box">
                        <img src="assets/images/advantage-images/1598451413-home-metrics-daily-volume.svg" alt="" class="advantage__img">
                    </div>
                    <div class="advantage__content">
                        <div class="advantage__title">€1.000.000+</div>
                        <div class="advantage__title-des">Daily market volume</div>
                        <div class="advantage__des">
                            Our state-of-the-art systems are built to securely process high volumes each day.
                        </div>
                    </div>
                </div>
                <div class="advantage__item-box">
                    <div class="advantage__img-box">
                        <img src="assets/images/advantage-images/1598451316-home-metrics-app-downloads.svg" alt="" class="advantage__img">
                    </div>
                    <div class="advantage__content">
                        <div class="advantage__title">Best broker</div>
                        <div class="advantage__title-des">Trusted across Europe</div>
                        <div class="advantage__des">
                            We have been voted 'Best Crypto Broker' 2019 & 2020 and on our way to become the number 1 in Europe.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="company">
        <div class="container__header">
            <div class="company__items">
                <div class="marquee">
                    <ul class="marquee-content">
                        <li>
                            <img src="assets/images/company-images/Bitcoin.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/Bloomberg.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/Business-Insider.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/Coindesk.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/CryptoDaily.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/CT.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/Finance-Magnates.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/Investing.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/SCMP.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/TET.svg" alt="">
                        </li>
                        <li>
                            <img src="assets/images/company-images/TIA.svg" alt="">
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="anywhere">
        <div class="container__main">
            <div class="anywhere__wrapper">
                <div class="anywhere__content-box">
                    <div class="anywhere__title">Trade anytime, anywhere</div>
                    <div class="anywhere__title-des">Boost your trading impact and reaction time in over 40+ cryptocurrencies via instant access to your portfolio.</div>
                    <div class="homeinfo__links"><a style="background: rgb(0,126,218); background: linear-gradient(90deg, rgba(0,126,218,1) 0%, rgba(10,135,138,1) 50%);" class="home__info-link" href="trading">
                        Start trading
                    </a>
                    </div>
                </div>
                <div class="anywhere__img-box">
                    <img class="anywhere__img" src="assets/images/anywhere-image/1611070929-leadsite-app-bodyminified.png" alt="">
                </div>
            </div>
        </div>
    </section>
</main>
<div class="bottom section-padding">
    <div class="bottom__container">
        <div class="row">
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                <div class="bottom-logo">
                    <a class="navbar-logo" href="/">
                        <%
                            out.println("<img style=\"width: 30px; margin-bottom: -8px; margin-right: 5px;\" src=\"" + request.getAttribute("domain_icon") + "\" alt=\"\"><span>" + request.getAttribute("domain_exchange_name") + "</span>");
                        %>
                    </a>
                    <%
            out.println("<p style=\"width: 230px;\">" + request.getAttribute("domain_exchange_name") + " is a simple, elegant, and secure platform to build your crypto portfolio.</p>");
          %>
                </div>
                <br><br>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
                <div class="bottom-widget">
                    <h4 class="widget-title">Features</h4>
                    <ul>
                        <li><a href="/">Home</a></li>
                        <li><a href="/trading">Trading</a></li>
                        <li><a href="/profile/wallet">Wallet</a></li>
                        <li><a href="/profile/invest">Invest</a></li>
                        <li><a href="/profile/swap">Instant swap</a></li>
                        <li><a href="/profile/p2p">P2P</a></li>
                        <li><a href="/profile/support">Support</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
                <div class="bottom-widget">
                    <h4 class="widget-title">Market tools</h4>
                    <ul>
                        <li><a href="/tools/marketcrypto">Crypto market cap</a></li>
                        <li><a href="/tools/marketscreener">Market screener</a></li>
                        <li><a href="/tools/technicalanalysis">Technical analysis</a></li>
                        <li><a href="/tools/crossrates">Cross rates</a></li>
                        <li><a href="/tools/heatmap">Currency heat map</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
                <div class="bottom-widget">
                    <h4 class="widget-title">Legal</h4>
                    <ul>
                        <li><a href="/terms">Terms of service</a></li>
                        <li><a href="/privacy-notice">Privacy notice</a></li>
                        <li><a href="/cookies-policy">Cookies policy</a></li>
                        <li><a href="/aml-kyc-policy">AML & KYC policy</a></li>
                        <li><a href="/fees">Fees</a></li>
                        <li><a href="/bugbounty">Bug Bounty</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6 col-w">
                <div class="bottom-widget">
                    <h4 class="widget-title">Exchange Pair</h4>
                    <ul>
                        <li><a href="/trading?symbol=BTC">BTC to USDT</a></li>
                        <li><a href="/trading?symbol=ETH">ETH to USDT</a></li>
                        <li><a href="/trading?symbol=LTC">LTC to USDT</a></li>
                        <li><a href="/trading?symbol=ADA">ADA to USDT</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="container">
        <div class="row">
            <div>
                <div class="copyright">
                    <%
                      out.println("<p style=\"font-size:12px\" ;=\"\"><strong>" + request.getAttribute("domain_exchange_name") + "</strong> © Copyright 2023 | Worldwide Distributed Digital Asset Exchange | Trading digitals assets such as Bitcoin involves significant risks.</p>");
                    %>
                </div>
            </div>
        </div>
    </div>
</div>
<style type="text/css">
    .menu__trade-item-link:hover {
        background-color: unset !important;
    }
    .market_tools_img {
        width: 8%;
        float: left;
        margin-left: 15px;
    }
    @media only screen and (max-width: 1250px) {
        .market_tools_img {
            display: none;
        }
    }
</style>
<script src="swiper%409.1.0/swiper-bundle.min.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/header.js"></script>
<script src="assets/js/slider-graphics.js"></script>
<script src="assets/js/company.js"></script>
<script src="assets/js/benefits.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/nouislider.min.js"></script>
<script src="assets/js/section-calck.js"></script>
</body>
</html>