---
layout: post
title:  "JIRA and Confluence Setup - FreeBSD 9.0"
date:   2012-07-02 15:57:06 -0400
categories: atlassian jira confluence jekyll
---
# Contents
{:.no_toc}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

# Atlassian

## JIRA

Get root shell. Run

```sh
echo "jira:::::::/home/jira:/bin/csh:" | adduser -f -
echo "setenv JAVA_HOME /usr/local/openjdk6" >> ~jira/.cshrc
```
You may consider updating this to get the latest version.

```sh
wget --no-check-certificate http://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-5.0.6.tar.gz
tar zxvf atlassian-jira-5.0.6.tar.gz
mv atlassian-jira-5.0.6-standalone atlassian-jira-5.0.6


echo "jira.home = /home/jira/jira-data" > /home/jira/atlassian-jira-5.0.6/atlassian-jira/WEB-INF/classes/jira-application.properties
OR
echo "export JIRA_HOME = /home/jira/jira-data"; echo "setenv     JIRA_HOME     /home/jira/jira-data" >> ~jira/.cshrc
```
