---
layout: home
title: What Do We Have
---  

<table class="tg">
<thead>
  <tr>
    <th class="tg-lhfm">Short Link Name</th>
    <th class="tg-lhfm">Short Link</th>
    <th class="tg-lhfm">Redirects To</th>
  </tr>
</thead>
<tbody>
  <tr>
    {% assign sorted_by_title = site.pages | sort:'title' %}
      {% for post in sorted_by_title %}
        {% unless redirect.from == '__LINKWITHSLASH__' %}
          {% if post.redirect.from  %} 
            <tr>
                <td class="tg-0lax">
                    {{ post.redirect.from }}
                </td>
                <td class="tg-0lax">
                    <a href="https://tales.fail{{ post.redirect.from }}">
                        tales.fail{{ post.redirect.from }}
                    </a>
                </td>
                <td class="tg-0lax">
                    <a href="{{ post.redirect.to }}">
                        {{ post.redirect.to }}
                    </a>
                </td>
              </tr>
        {% endif %}
      {% endunless %}
    {% endfor %}
  </tr>
</tbody>
</table>

