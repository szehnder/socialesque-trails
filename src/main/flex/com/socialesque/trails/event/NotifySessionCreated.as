package com.socialesque.trails.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.socialesque.trails.control.TrailsController;

	public class NotifySessionCreated extends CairngormEvent
	{
		public var session:Object;
		public function NotifySessionCreated(session:Object)
		{
			super(TrailsController.NOTIFY_SESSION_CREATED);
			this.session = session;
		}
		
	}
}