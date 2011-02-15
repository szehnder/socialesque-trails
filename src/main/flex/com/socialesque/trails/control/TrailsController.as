package com.socialesque.trails.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.socialesque.trails.command.*;
	
	public class TrailsController extends FrontController
	{
		
		public static const EVENT_CREATE_SESSION:String = "EVENT_CREATE_SESSION";
		
		public static const NOTIFY_SESSION_CREATED:String = "NOTIFY_SESSION_CREATED";
		public static const NOTIFY_RENDER_REQUESTED:String = "NOTIFY_RENDER_REQUESTED";
		
		private static var instance:TrailsController;
		
		public static function getInstance() : TrailsController {
			if (TrailsController.instance==null) 
				TrailsController.instance = new TrailsController();
			return TrailsController.instance;
		}
		
		public function TrailsController()
		{
			addCommand(EVENT_CREATE_SESSION, CreateSessionCommand);
		}

	}
}