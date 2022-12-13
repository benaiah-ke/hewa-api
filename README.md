# Hewa API
## Introduction

Hewa API allows users to create carbon credit marketplaces. These goes in line with the 'polluter pays' principle, which essentially means that producers of carbon can pay for carbon credits from offsetters to offset their carbon production and mitigate the effects of climate change

## Setup

1. Clone this branch
2. Run `bundle install && rails db:migrate`
3. Run rails s
4. You can now access the various functionalities of the API including user aunthentication, creating emmitter and offsetter profiles, updating carbon offset etc. (see route in the `config/routes.rb` file)