<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class actionList
{
    public static function showArray()
    {
        $con = array();
        
        //20140327 zoearth 照理來說這邊應該是要套上翻譯功能.但是想到雖然符合系統規劃.但實際上用不到@@
        
        $con['menu']['title'] = "選單管理";
        $con['menu']['action']['index']  = "選單列表";
        $con['menu']['action']['create'] = "選單新增";
        $con['menu']['action']['save']   = "選單儲存";
        $con['menu']['action']['update'] = "選單更新";
        $con['menu']['action']['save_ordering'] = "選單更新排序";
        $con['menu']['action']['delete'] = "選單刪除";
        
        $con['page']['title'] = "頁面管理";
        $con['page']['action']['index']  = "頁面新增";
        $con['page']['action']['create'] = "頁面新增";
        $con['page']['action']['save']   = "頁面儲存";
        $con['page']['action']['update'] = "頁面更新";
        $con['page']['action']['save_ordering'] = "頁面更新排序";
        $con['page']['action']['delete'] = "頁面刪除";
        
        $con['setting']['title'] = "網站設定";
        $con['setting']['action']['index']  = "網站設定";
        $con['setting']['action']['create'] = "網站設定";
        $con['setting']['action']['save']   = "網站設定儲存";
        $con['setting']['action']['update'] = "網站設定更新";
        $con['setting']['action']['save_ordering'] = "網站設定更新排序";
        $con['setting']['action']['delete'] = "網站設定刪除";
        
        return $con;
    }
}