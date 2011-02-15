package com.socialesque.trails.model
{
	import com.adobe.cairngorm.model.ModelLocator;
	
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	
	import spark.components.Group;

	public class TrailsModel implements ModelLocator
	{
		
		[Bindable] public var sessionDataDictionary:Dictionary;
		[Bindable] public var mouseDown:Boolean = false; 
		[Bindable] public var isRecording:Boolean = true;
		[Bindable] public var startedRecordingAt:Date;
		[Bindable] public var sessions:ArrayCollection = new ArrayCollection();
		[Bindable] public var isShowingLog:Boolean = false;
		[Bindable] public var nextSessionId:int = 0;
		[Bindable] public var colorHash:Dictionary;
		[Bindable] public var showGrid:Boolean = true;
		[Bindable] public var activeSession:Object;
		[Bindable] public var gridCanvas:Group;
		[Bindable] public var gridSize:uint = 10;
		[Bindable] public var cells:ArrayCollection = new ArrayCollection();
		[Bindable] public var showAllSessions:Boolean = false;
		[Bindable] public var showTrails:Boolean = true;
		[Bindable] public var showFlowVectors:Boolean = true;
		
		private static var instance:TrailsModel;
		
		public static function getInstance() : TrailsModel {
			if (TrailsModel.instance==null) 
				TrailsModel.instance = new TrailsModel();
			return TrailsModel.instance; 
		}
		
		public function TrailsModel()
		{
		}

	}
}