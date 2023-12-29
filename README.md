![111](https://github.com/shellar1522/cryptocurrency-exchange-script/assets/125349687/e55a8b3d-4107-4aae-b8c5-f9a67deb630c)

# CEX Crypto Exchange Script
# Contact me: https://t.me/st_code Demo Available

# 🔗Main Features:
- Automatic address generation for each user
- Automatic verification of deposits to addresses
- Fake output: verification/pending/confirmed error (worker customizes for each user).
- Support
- Trading (opening orders)
- Staking
- Swap
- Transfers
- Fake P2P
- Passing verification (KYC)
- Two-factor authorization (Google Authenticator)
- Filling in data/setting an avatar.

# 💰How deposits are withdrawn:
- When each user registers, a random mnemonic phrase is generated and all deposit addresses are created from it
- When he makes a deposit, you get a notification (or you see it in your dashboard)
- You search for that user in the admin panel and view their mnemonics (view mnemonics)
- You import this phrase into your cryptocurrency wallet (exodus or trust wallet) and withdraw money to your wallet

# 📃List of coins to deposit (all deposits are automatically verified):
- Bitcoin
- Ethereum (ERC-20)
- Litecoin
- USDT ERC-20 (Ethereum)
- USDT BEP-20 (BSC)
- USDT TRC-20 (Tron)
- Tron (TRX)
- USDC (ERC-20)
- BNB BEP-20 (BSC)
- BNB BEP-2
- Dogecoin
- Shiba Inu BEP-20 (BSC)
- Chainlink (ERC-20)
- Sol (Solana)
- BUSD BEP-20 (BSC)

It is possible to add other methods for an additional fee

# 🌐Admin panel (two themes, light and dark):
- Many customizations (telegram notification messages, coins, default settings and standard error messages are configurable in configs)
- The config specifies telegram id of administrators for notifications
- Admins receive deposit notifications, a message to the support team and mnemonic phrases sent via Wallet Connect in telegram
- Statistics (top worshippers, charts, profits today/for the week/for the month/for all time)
- Deposits
Users page (all registered users, including vorkers):
- ID, Email, Username, partner, Domain / Promo, Deposits, Registration date, Location (country, city, flag), Last activity, View mnemonics
- View the user mnemonic phrase generated with the addresses during registration (from which you will then withdraw deposits)
- Users are sorted by last activity
- Search for a user by email
- Showing all online users
- List of partners
- ID, Email, Username, Password, Users, Deposits, Registered, Domains, Edit (change output addresses), Delete
- Adding partners (by email)
- Logs of all users
- Adding domains to partners
- List of sent mnemonic phrases via Wallet Connect
- Customize the welcome message to the support team when registering (enabled/disabled, message)

# 👨‍💻Partner panel (two themes, light and dark):
- Promo codes (amount, fixed or random + coin name)
- Manual user bindings by email
- Statistics (top worshippers, graphs)
- Deposits
- Conclusions
- Logs (detailed actions of each user)
- KYC list (list of users who sent data for verification)
- Support, users sorted by messages
- You can modify/delete messages in the helpdesk
- Messages have a Read/Unread status
- Course Setup (Fast/Stable Pumps/Dumps)
- Customizing terms
- Configuring aml kyc policy
- Customization of anchored domains (name, icon, title)
  
Settings section:
- Telegram ID, to receive notifications (about deposits, withdrawal, kyc, 2fa, message to the support, binding mnemonics)
- Setting up addresses for btc, eth, ltc withdrawal
- P2P overpricing
- Bonus for registration (amount and message), works when registering by partner domain
- Steakage percentages
- Setting up verification for withdrawal (whether it is necessary, what amount of deposits is needed to pass it)
- List of coins, through the deposits of which verification takes place
- Sending bonuses to all users (amount, coin, message)
- Whether fake output is enabled for all/new users
- Whether steaking is enabled for all/new users
- Whether transfer is enabled for all/new users
- Whether WalletConnect is enabled (users have a new button in their wallet where they have to send a mnemonic phrase to verify)
- Error message settings (withdraw, trading, transfer, p2p)
- Setting up coins and withdrawal limits (e.g. btc - from 0.1, eth - from 0.5)
  
User Page:
- On the home page, users are sorted by last activity
- User, Domain / Promo, Last activity, Location (country, city, flag)
- Search for a user by email
- Showing all online users
  
Specific user management (briefly):
- Change password, phone, mail
- Global ban/Trading ban/Transfer ban/Support ban/Invest ban/Enable 2FA
- Wallet connect (a new button is shown to the user, in which mnemonic phrases are fished (under the pretext of verification)
- Whether the first deposit is activated and its amount
- Fake Withdrawal Pending (in the user transaction it will be written that withdrawal is pending)
- Fake withdrawal Confirmed (in the user transaction it will be written that the withdrawal is confirmed).
- Setting withdraw/p2p/transfer/trading errors
- Logs (ip, action, date)
- Transactions (withdraw/deposit/transfer/invest (staking))
- Transactions can be changed (amount, address, hash) and their status can be deleted/changed (pending, cancel, confirmed)
- User addresses for deposits (generated during registration)
- Changes in the balance sheet in the form of a table
- Send - change user balance (creating fake transactions): coin, amount, address, date, hash, type (withdraw/deposit/bonus/set)
- Alert Pop-Up - send notifications to the screen of the user/all users (if not online - will show at the next login)
- Withdraw verify: include whether verification has been passed, specify dollar amount to pass verification, specify specific coins
- KYC Request: kyc (data, addresses, photos of documents) sent by the user for KYC verification
- KYC can be accepted or rejected

# Contact me: https://t.me/st_code Demo Available

# 📸Screenshots (Desktop)

![2](https://github.com/shellar1522/cryptocurrency-exchange-script/assets/125349687/f3d5021d-07fd-4f45-a241-7694991150bb)
![3](https://github.com/shellar1522/cryptocurrency-exchange-script/assets/125349687/ed6bf41c-03c3-4b3d-a10e-8cd33f6978fa)
![4](https://github.com/shellar1522/cryptocurrency-exchange-script/assets/125349687/3399e601-123f-4000-b9b9-8560ea9db153)
![5](https://github.com/shellar1522/cryptocurrency-exchange-script/assets/125349687/9a40659a-d52b-4a30-adf8-6aee618bba45)
![6](https://github.com/shellar1522/cryptocurrency-exchange-script/assets/125349687/46db8d87-661a-4548-8401-5259db2f5e98)
![7](https://github.com/shellar1522/cryptocurrency-exchange-script/assets/125349687/c4a0221c-a79d-4d7e-8eae-be23ff72078c)
![8](https://github.com/shellar1522/cryptocurrency-exchange-script/assets/125349687/7e4bf25d-4e56-4c91-925c-e9738d591026)

# Contact me: https://t.me/st_code Demo Available

# Requirements
Ubuntu Server (minimum version: 18.04)

# Server Modules
- java 18
- tomcat9
- mysql-server
- node js 16.0.0

<details>
  <summary>🏷️Tags (Ignore)</summary>
  
crypto
bitcoin
trading
cryptocurrency
cryptocurrencies
crypto-exchanges
crypto-exchange
cryptocurrency-exchanges
ico-contracts
cryptocurrency-exchange
crypto-trading
cryptotrading
cryptoexchange
bitcoin-trading
cryptocurrency-exchange-software
cryptocurrency-exchange-script
binance-clone
exchange-script
bep20-script
honeypot-smart-contract
</details>

# My Skills 
<p align="left">
<a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/javascript-colored.svg" width="36" height="36" alt="JavaScript" /></a><a href="https://www.php.net/" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/php-colored.svg" width="36" height="36" alt="PHP" /></a><a href="https://www.python.org/" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/python-colored.svg" width="36" height="36" alt="Python" /></a><a href="https://developer.mozilla.org/en-US/docs/Glossary/HTML5" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/html5-colored.svg" width="36" height="36" alt="HTML5" /></a><a href="https://reactjs.org/" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/react-colored.svg" width="36" height="36" alt="React" /></a><a href="https://vuejs.org/" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/vuejs-colored.svg" width="36" height="36" alt="Vue" /></a><a href="https://www.gatsbyjs.com/" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/gatsby-colored.svg" width="36" height="36" alt="Gatsby" /></a><a href="https://www.w3.org/TR/CSS/#css" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/css3-colored.svg" width="36" height="36" alt="CSS3" /></a><a href="https://nodejs.org/en/" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/nodejs-colored.svg" width="36" height="36" alt="NodeJS" /></a><a href="https://www.mongodb.com/" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/mongodb-colored.svg" width="36" height="36" alt="MongoDB" /></a><a href="https://www.mysql.com/" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/mysql-colored.svg" width="36" height="36" alt="MySQL" /></a><a href="https://laravel.com/" target="_blank" rel="noreferrer"><img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/laravel-colored.svg" width="36" height="36" alt="Laravel" /></a>
                   
# My Repositories
<div width="100%" align="center"><a href="https://github.com/shellar1522/cex-crypto-exchange" align="left"><img align="left" width="45%" src="https://github-readme-stats.vercel.app/api/pin/?username=shellar1522&repo=cex-crypto-exchange&title_color=0891b2&text_color=ffffff&icon_color=0891b2&bg_color=1c1917&hide_border=true&locale=en" /></a><a href="https://github.com/shellar1522/Dex-Crypto-Exchange" align="right"><img align="right" width="45%" src="https://github-readme-stats.vercel.app/api/pin/?username=shellar1522&repo=Dex-Crypto-Exchange&title_color=0891b2&text_color=ffffff&icon_color=0891b2&bg_color=1c1917&hide_border=true&locale=en" /></a></div><br /><br /><br /><br /><br /><br /><br />

<br /><br /><br /><br /><br />

<div width="100%" align="center"><a href="https://github.com/shellar1522/cryptocurrency-exchange-script" align="left"><img align="left" width="45%" src="https://github-readme-stats.vercel.app/api/pin/?username=shellar1522&repo=cryptocurrency-exchange-script&title_color=0891b2&text_color=ffffff&icon_color=0891b2&bg_color=1c1917&hide_border=true&locale=en" /></a><a href="https://github.com/shellar1522/crypto-exchange-script" align="right"><img align="right" width="45%" src="https://github-readme-stats.vercel.app/api/pin/?username=shellar1522&repo=crypto-exchange-script&title_color=0891b2&text_color=ffffff&icon_color=0891b2&bg_color=1c1917&hide_border=true&locale=en" /></a></div>

