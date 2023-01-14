//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package wcl.bean;

public class UserBean {
    private int id;
    private String username;
    private String password;
    private String realName;
    private String tel;
    private String email;
    private String college;

    public UserBean() {
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealName() {
        return this.realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCollege() {
        return this.college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String toString() {
        return "UserBean{id=" + this.id + ", username='" + this.username + '\'' + ", password='" + this.password + '\'' + ", realName='" + this.realName + '\'' + ", tel='" + this.tel + '\'' + ", email='" + this.email + '\'' + ", college='" + this.college + '\'' + '}';
    }
}
