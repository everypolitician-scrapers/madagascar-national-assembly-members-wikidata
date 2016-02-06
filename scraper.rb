#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'
require 'pry'

names = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/National_Assembly_(Madagascar)',
  after: '//span[@id="Current_members"]',
  before: '//span[@id="See_also"]',
  xpath: './/ul[1]//li//a[not(@class="new")]/@title',
) 

EveryPolitician::Wikidata.scrape_wikidata(names: { en: names }, output: false)
warn EveryPolitician::Wikidata.notify_rebuilder

