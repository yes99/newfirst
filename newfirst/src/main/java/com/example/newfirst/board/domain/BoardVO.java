package com.example.newfirst.board.domain;

public class BoardVO {

    private int id;
    private String date;
    private String title;
    private String assign;
    private String perform;
    private String fail;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }
    public void setDate(String date) {this.date = date;}

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAssign() {
        return assign;
    }

    public void setAssign(String assign) {
        this.assign = assign;
    }

    public String getPerform() {
        return perform;
    }

    public void setPerform(String perform) {
        this.perform = perform;
    }

    public String getFail() {
        return fail;
    }

    public void setFail(String fail) {
        this.fail = fail;
    }
}
