package com.socialesque.trails.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.socialesque.trails.control.TrailsController;

	public class CreateSessionEvent extends CairngormEvent
	{
		public function CreateSessionEvent()
		{
			super(TrailsController.EVENT_CREATE_SESSION);
		}
		
	}
}