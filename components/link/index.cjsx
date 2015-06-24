###
@todo
###

require './style'
FontIcon = require "../font_icon"

module.exports = React.createClass

  # -- States & Properties
  propTypes:
    route       : React.PropTypes.array
    icon        : React.PropTypes.string
    caption     : React.PropTypes.string
    count       : React.PropTypes.number
    style       : React.PropTypes.string
    onClick     : React.PropTypes.func

  # -- Events
  onClick: (event) ->
    @props.onClick? event, @

  # -- Render
  render: ->
    <a  data-component-link=""
        href={"##{@props.route}"}
        className={@props.style}
        onClick={@onClick}
        data-flex="horizontal center">
      { <FontIcon value={@props.icon} /> if @props.icon }
      { <abbr>{@props.caption}</abbr> if @props.caption }
      { <small>{@props.count}</small> if @props.count and parseInt(@props.count) isnt 0}
    </a>
