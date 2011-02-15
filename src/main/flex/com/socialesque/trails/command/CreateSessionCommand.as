package com.socialesque.trails.command
{
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.socialesque.trails.event.NotifySessionCreated;
	import com.socialesque.trails.model.TrailsModel;
	import com.socialesque.utils.ColorGenerator;

	public class CreateSessionCommand implements Command
	{ 
	
		private var model:TrailsModel = TrailsModel.getInstance();

		public function execute(event:CairngormEvent):void
		{
			var session:Object = {id: model.nextSessionId, createdAt: new Date(), color: ColorGenerator.random()};	
				model.sessionDataDictionary[session] = new Array(); 
				model.sessions.addItem(session);
				model.nextSessionId++;
				model.startedRecordingAt = new Date();
				model.activeSession = session;
				new NotifySessionCreated(session).dispatch(); 
		}
		
	}
}