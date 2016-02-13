# A CoAP Server with a Rack Interface for Use of Web Frameworks such as Ruby on Rails in the Internet of Things

We present a [Constrained Application Protocol
(CoAP)](https://tools.ietf.org/html/rfc7252) server with a [Rack
interface](http://rubydoc.info/github/rack/rack/master/file/SPEC) to enable
application development for the Internet of Things (or Wireless Embedded
Internet) using frameworks such as [Ruby on Rails](http://rubyonrails.org/).
Those frameworks avoid the need for reinvention of the wheel, and simplify the
use of Test-driven Development (TDD) and other agile software development
methods.  They are especially beneficial on less constrained devices such as
infrastructure devices or application servers. Our solution supports
development of applications almost without paradigm change compared to HTTP and
provides performant handling of numerous concurrent clients. The server
translates transparently between the protocols and also supports specifics of
CoAP such as [service and resource
discovery](https://tools.ietf.org/html/rfc7252#section-7), [block-wise
transfers](https://tools.ietf.org/html/draft-ietf-core-block-17) and [observing
resources](https://tools.ietf.org/html/draft-ietf-core-observe-16). It also
offers the possibility of transparent transcoding between JSON and
[CBOR](https://tools.ietf.org/html/rfc7049) payloads. The [Resource Directory
draft](https://tools.ietf.org/html/draft-ietf-core-resource-directory-02) was
implemented by us as a Rails application running on our server software.

[PDF](https://nning.io/doc/thesis.pdf)

## Software Repositories

* https://github.com/nning/coap
* https://github.com/nning/david
* https://github.com/nning/core-rd

## TeX Live Package Dependencies on Arch Linux

    sudo pacman -S texlive-bibtexextra texlive-fontsextra texlive-core \
      texlive-latexextra texlive-pictures

## Copyright

This work is licensed under a [Creative Commons
Attribution-NonCommercial-ShareAlike 4.0
License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

[henning mueller](https://nning.io)
