/*
 ---

 script: Modal.js

 description: MUI.Modal - Create modal dialog windows.

 copyright: (c) 2011 Contributors in (/AUTHORS.txt).

 license: MIT-style license in (/MIT-LICENSE.txt).

 See Also: <Window>

 requires:
 - MochaUI/MUI
 - MochaUI/MUI.Windows

 provides: [MUI.Modal]

 ...
 */

MUI.Modal = new NamedClass('MUI.Modal', {

	Extends: MUI.Window,

	options: {
		type: 'modal'
	},

	initialize: function(options){
		if(!options.type) options.type='modal';

		if (!$('modalOverlay')){
			this._modalInitialize();
			this.modalSizeEvent = this._setModalSize.bind(this);
			window.addEvent('resize', this.modalSizeEvent);
			/*
			window.addEvent('resize', function(){
				this._setModalSize();
			}.bind(this));
			*/
		}
		this.parent(options);
	},

	_modalInitialize: function()
	{
		var self = this;
		var modalOverlay = new Element('div', {
			'id': 'modalOverlay',
			'styles': {
				'height': document.getCoordinates().height,
				'opacity': .6
			}
		}).inject(document.body);

		modalOverlay.setStyles({
			'position': Browser.ie6 ? 'absolute' : 'fixed'
		});

		modalOverlay.addEvent('click', function(){
			var instance = MUI.get(MUI.currentModal.id);
			if (instance.options.modalOverlayClose)
			{
				window.removeEvent('resize', self.modalSizeEvent);
				MUI.currentModal.close();
			}
		});
		
		if (Browser.ie6){
			var modalFix = new Element('iframe', {
				'id': 'modalFix',
				'scrolling': 'no',
				'marginWidth': 0,
				'marginHeight': 0,
				'src': '',
				'styles': {
					'height': document.getCoordinates().height
				}
			}).inject(document.body);
		}

		MUI.Modal.modalOverlayOpenMorph = new Fx.Morph($('modalOverlay'), {
			'duration': 150
		});
		MUI.Modal.modalOverlayCloseMorph = new Fx.Morph($('modalOverlay'), {
			'duration': 150,
			onComplete: function()
			{
				window.removeEvent('resize', this.modalSizeEvent);
				$('modalOverlay').destroy();
			}.bind(this)
		});
	},

	_setModalSize: function()
	{
		if (typeOf($('modalOverlay')) == 'null')
		{
			window.removeEvent('resize', this.modalSizeEvent);
		}
		else
		{
			$('modalOverlay').setStyle('height', document.getCoordinates().height);
			if (Browser.ie6) $('modalFix').setStyle('height', document.getCoordinates().height);
		}
	}

});
