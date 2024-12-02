+++
date = '2024-12-02T17:20:11+08:00'
draft = false
title = 'You can see me'
categories = ['test']
tags = ['template']
weight = 1000
hidden = false
[params]
  author = 'senkublog'
+++

I write something.
{{ range .Site.Pages }}
  <li>
    <p>Page: {{ .Title }}</p>
    <p>Hidden: {{ .Params.hidden }}</p>
  </li>
{{ end }}
