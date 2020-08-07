-- 用户表
INSERT INTO users VALUES(2,'cat@qq.com','cat','123','13029701825',0);
INSERT INTO users VALUES(1,'tomcat@qq.com','tom','123','13029701825',1);
SELECT * FROM users;

CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(50) UNIQUE NOT NULL,
username VARCHAR(50),
PASSWORD VARCHAR(100),
phoneNum VARCHAR(20),
STATUS INT
);

-- 角色表
SELECT * FROM role;
CREATE TABLE role(
id INT AUTO_INCREMENT PRIMARY KEY,
roleName VARCHAR(50) ,
roleDesc VARCHAR(50)
);
INSERT INTO role VALUES(1,'第一个角色','vip');
INSERT INTO role VALUES(2,'第二个角色','vip');

-- 用户角色关联表
CREATE TABLE users_role(
userId INT,
roleId INT,
PRIMARY KEY(userId,roleId),
FOREIGN KEY (userId) REFERENCES users(id),
FOREIGN KEY (roleId) REFERENCES role(id)
);

INSERT INTO users_role VALUES(1,1);
INSERT INTO users_role VALUES(1,2);


-- 资源权限表
CREATE TABLE permission(
id INT AUTO_INCREMENT PRIMARY KEY,
permissionName VARCHAR(50) ,
url VARCHAR(50)
);

-- 角色权限关联表
CREATE TABLE role_permission(
permissionId INT,
roleId INT,
PRIMARY KEY(permissionId,roleId),
FOREIGN KEY (permissionId) REFERENCES permission(id),
FOREIGN KEY (roleId) REFERENCES role(id)
);

INSERT INTO permission VALUES(1,'一点点的权限','userdao');
INSERT INTO permission VALUES(2,'很大的权限','**');
SELECT * FROM permission;

SELECT * FROM role_permission;
INSERT INTO role_permission VALUES(1,1);
INSERT INTO role_permission VALUES(1,2);
INSERT INTO role_permission VALUES(2,1);
INSERT INTO role_permission VALUES(2,2);




-- aop日志表
CREATE TABLE sysLog(    
		id INT AUTO_INCREMENT PRIMARY KEY,    
		visitTime TIMESTAMP,    
		username VARCHAR(50),    
		ip VARCHAR(30),    
		url VARCHAR(50),    
		executionTime INT,    
		method VARCHAR(200) 
);

SELECT * FROM syslog;