package com.socialesque.trails.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.socialesque.trails.control.TrailsController;

	public class NotifyRenderRequested extends CairngormEvent
	{
		public function NotifyRenderRequested()
		{
			super(TrailsController.NOTIFY_RENDER_REQUESTED);
		}
		
	}
}