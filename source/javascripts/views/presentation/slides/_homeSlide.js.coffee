
class AmoebaSite.Presentation.Slide_Home extends AmoebaSB.Slide_Base
  setup: ->
    this._setupElement("homeSlide")
    @transition = 'zoom'

  slideIn: (afterTransitionComplete) =>
    if afterTransitionComplete
      @home = new AmoebaSite.HomeScene(@el, =>
#        this._slideIsDone(1000)
      )

  slideOut: (afterTransitionComplete) =>
    if afterTransitionComplete
      @home.tearDown()
      @home = undefined

