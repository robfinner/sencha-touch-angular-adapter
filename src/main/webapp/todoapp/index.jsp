<!DOCTYPE html>
<html xmlns:ng="http://angularjs.org" xmlns:stng="http://sencha-touch-angular.org">
<head>
    <title>Sencha Toys</title>

    <link rel="stylesheet" href="../lib/sencha-touch.css"/>

    <script src="../lib/angular-0.9.19.js"></script>
    <script src="../lib/sencha-touch-1.1.0.js"></script>
    <script src="sencha-touch-angular-adapter-0.9.0.js"></script>
    <script src="todoapp.js"></script>

</head>
<body>

<div st:xtype="carousel" fullscreen="true">
    <div st:xtype="panel" id="todos" ng:controller="TodoController" st:event="activate:onActivate()">
        <div st:xtype="toolbar" dock="top" title="Todos">
            <div st:xtype="button" text="Save" st:event="tap:saveTodos()"></div>
            <div st:xtype="button" text="Settings" st:event="tap:showSettings()"></div>
        </div>
        <div st:xtype="textfield" name="inputText" place-holder="enter your todo here" st:event="action:addTodo()"></div>

        <div ng:repeat="todo in todos" st:xtype="checkboxfield" name="todo.done" label="{{todo.name}}"></div>

    </div>
    <div st:xtype="panel" id="settings" ng:controller="SettingsController" st:event="activate:onActivate(),beforedeactivate:onPassivate()">
        <div st:xtype="toolbar" dock="top" title="Settings">
            <div st:xtype="button" text="Back" st:event="tap:back()"></div>
        </div>
        <div st:xtype="textfield" name="storageKey" label="Store key"></div>
    </div>

</div>


</body>
</html>