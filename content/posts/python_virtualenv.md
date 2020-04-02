+++
title = "Python_virtualenv"
date = 2020-04-02T20:42:29+09:00
lastmod = 2020-04-02T20:42:29+09:00
tags = []
categories = []
imgs = []
cover = ""  # image show on top
readingTime = true  # show reading time after article date
toc = true
comments = false
justify = false  # text-align: justify;
single = false  # display as a single page, hide navigation on bottom, like as about page.
license = "MIT"  # CC License
+++

### we can set virtual env with python on system


1. python -m pip install virtualenv
2. virtualenv [name]

ex) auto_script.bat

REM create virtual env
REM virtualenv [name]
REM %1 is virtualenv name
REM exit is deactivate
echo set python env : %1
source %1/Script/actiate

3. switching env using command with activate or deactivate
