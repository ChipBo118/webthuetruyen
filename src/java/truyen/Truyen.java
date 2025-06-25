/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package truyen;

/**
 *
 * @author Admin
 */
public class Truyen {
    private int id;
    private String tenTruyen;
    private String tacGia;
    private double gia;
    private String anhBia;

    public Truyen(int id, String tenTruyen, String tacGia, double gia, String anhBia) {
        this.id = id;
        this.tenTruyen = tenTruyen;
        this.tacGia = tacGia;
        this.gia = gia;
        this.anhBia = anhBia;
}
// Constructor cho việc thêm mới (id tự động tăng)
    public Truyen(String tenTruyen, String tacGia, double gia, String anhBia) {
        this(0, tenTruyen, tacGia, gia, anhBia); // ID sẽ được bỏ qua khi INSERT
    }
    // Getters
    public int getId() { return id; }
    public String getTenTruyen() { return tenTruyen; }
    public String getTacGia() { return tacGia; }
    public double getGia() { return gia; }
    public String getAnhBia() { return anhBia; }

    // Setters (nếu bạn muốn cho phép thay đổi các trường này)
    public void setId(int id) { this.id = id; }
    public void setTenTruyen(String tenTruyen) { this.tenTruyen = tenTruyen; }
    public void setTacGia(String tacGia) { this.tacGia = tacGia; }
    public void setGia(double gia) { this.gia = gia; }
    public void setAnhBia(String anhBia) { this.anhBia = anhBia; }

    @Override
    public String toString() {
        return "Truyen [ID=" + id + ", TenTruyen=" + tenTruyen + ", TacGia=" + tacGia + ", Gia=" + gia + ", AnhBia=" + anhBia + "]";
    }
}