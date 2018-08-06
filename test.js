
function test(msg, submsg)
{
    return msg + submsg;
}

var DeviceUtil = {};
//设备是否越狱
DeviceUtil.isRoot = function() {
    return Util.isRoot();
};
//是否具有访问位置权限
DeviceUtil.isSupportLocation = function() {
    return Util.isSupportLocation();
};
//是否具有访问通讯录权限
DeviceUtil.isSupportContact = function() {
    return Util.isSupportContact();
};
//是否具有访问日历权限
DeviceUtil.isSupportCalendar = function() {
    return Util.isSupportCalendar();
};
//是否具有访问提醒事项权限
DeviceUtil.isSupportReminder = function() {
    return Util.isSupportReminder();
};
//是否具有访问相片权限
DeviceUtil.isSupportPhoto = function() {
    return Util.isSupportPhoto();
};
//是否具有访问麦克风权限
DeviceUtil.isSupportMicrophone = function() {
    return Util.isSupportMicrophone();
};
//是否具有访问相机权限
DeviceUtil.isSupportCamera = function() {
    return Util.isSupportCamera();
};
//是否具有访问运动与健康权限
DeviceUtil.isSupportHealth = function() {
    return Util.isSupportHealth();
};
//打开照片
DeviceUtil.openCamera = function() {
    
};
//添加视图
DeviceUtil.addView = function() {
    var i = 123;
    Util.addView();
}