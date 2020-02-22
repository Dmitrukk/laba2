package lab2;

import java.util.List;

public class Car {
    public String mark;
    public String color;
    public List<String> characteristics;
    public String additionalInfo;

    public String getMark() {
        return mark;
    }
    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getColor() {
        return color;
    }
    public void setColor(String color) {
        this.color = color;
    }

    public List<String> getCharacteristics() {
        return characteristics;
    }
    public void setCharacteristics(List<String> characteristics) {
        this.characteristics = characteristics;
    }

    public String getAdditionalInfo() { return additionalInfo; }

    public void setAdditionalInfo(String additionalInfo) {
        this.additionalInfo = additionalInfo;
    }}