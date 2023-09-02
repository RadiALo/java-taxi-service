<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="normalize.jsp"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<style>
    html {
        font-family: Roboto, Arial;
        font-size: 34px;
        line-height: 64px;
        color: #EC53B0;
    }

    body {
        background-color: #0E21A0;
    }

    header {
        margin: 0 20px;
        background-color: #4D2DB7;
        border-radius: 16px;
        display: flex;
        justify-content: space-between;
        position: sticky;
        top: 0;
    }

    main {
        margin: 20px;
        padding: 40px;
        background-color: #4D2DB7;
        border-radius: 16px;
        box-shadow: 0 3px 10px #4D2DB7;
    }

    h1 {
        margin: 20px;
    }

    main.interaction-form {
        margin-left: 20%;
        margin-right: 20%;
        min-width: 600px;
        background-color: #4D2DB7;
        border-radius: 16px;
        padding: 40px;
    }

    div.table {
        padding: 20px 80px;
        display: table;
    }

    p.tabled-row {
        display: table-row;
    }

    .tabled {
        display: table-cell;
    }

    .panel {
        margin: 0px 100px;
        display: flex;
        justify-content: center;
    }

    .item-container {
        margin: 20px;
        padding: 20px 60px;
        border-radius: 16px;
        box-shadow: 0 3px 10px #0E21A0;
        display: flex;
        justify-content: space-between;
        background-color: #0E21A0;
    }

    .item-id {
        font-weight: bold;
        font-size: 38px;
        border-radius: 100%;
        width: 60px;
        height: 60px;
        line-height: 60px;
        text-align: center;
        background-color: #EC53B0;
        color: #4D2DB7;
        box-shadow: 0 0 10px #9D44C0;
    }

    label {
        width: 300px;
        text-align: justify;
        padding-right: 10px;
    }

    input {
        border-width: 0px;
        padding: 10px;
        font-size: 34px;
        border-radius: 16px;
        background-color: #EC53B0;
        color: #4D2DB7;
        box-shadow: 0 3px 10px #9D44C0;
    }

    select {
        width: 100%;
        border-width: 0px;
        padding: 10px;
        font-size: 34px;
        border-radius: 16px;
        background-color: #EC53B0;
        color: #4D2DB7;
        box-shadow: 0 3px 10px #9D44C0;
    }

    input::placeholder {
        color: #4D2DB7;
        opacity: 0.8;
    }

    input.button {
        margin: 30px;
        display: inline-block;
        width: 320px;
        height: 80px;
        background-color: #EC53B0;
        color: #4D2DB7;
        box-shadow: 0 3px 10px #9D44C0;
        border-radius: 10000px;
        cursor:pointer;
    }

    a.link {
        margin: 30px;
        display: inline-block;
        width: 320px;
        line-height: 80px;
        height: 80px;
        background-color: #EC53B0;
        color: #4D2DB7;
        box-shadow: 0 3px 10px #9D44C0;
        border-radius: 10000px;
        text-align: center;
        text-decoration: none;
    }

    a.container-link {
        display: inline-block;
        width: 260px;
        line-height: 60px;
        height: 60px;
        background-color: #EC53B0;
        color: #4D2DB7;
        box-shadow: 0 3px 10px #9D44C0;
        border-radius: 10000px;
        text-align: center;
        text-decoration: none;
    }

    a.head-link {
        margin: 20px;
        display: inline-block;
        width: 260px;
        line-height: 60px;
        height: 60px;
        background-color: #EC53B0;
        color: #4D2DB7;
        box-shadow: 0 3px 10px #9D44C0;
        border-radius: 10000px;
        text-align: center;
        text-decoration: none;
    }

    input.button:hover, input.button:focus {
        background-color: #ee5baa;
    }

    input:hover, input:focus {
        background-color: #ee5baa;
    }

    a.link:hover, a.link:focus {
        background-color: #ee5baa;
    }

    a.head-link:hover, a.head-link:focus {
        background-color: #ee5baa;
    }

    a.container-link:hover, a.container-link:focus {
        background-color: #ee5baa;
    }
</style>
