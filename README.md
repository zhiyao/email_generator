#Introduction

This program make use of shopify liquid template and import the data from a csv file to be place on the template file.
The header of csv is the unique name of the handlebars.
The value of the csv is correspond to each of the header column

# Installation

Make sure you have ruby and bundler installed in your computer
Next run to download the necessary gems

    bundle install

# Usage

1. Create a unique tag in html and create the same header in `data.csv`

    {{ header_1 }}

2. Each of the rows in the data.csv will generate a new html.

3. execute script by running

    ruby generator.rb
