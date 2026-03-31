-- ============================================
-- 用户信息表 - world 数据库
-- ============================================

-- 使用 world 数据库
USE world;

-- 创建 users 表
CREATE TABLE IF NOT EXISTS users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '用户 ID',
    name VARCHAR(50) NOT NULL COMMENT '用户姓名',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';

-- 插入示例数据（与 UserController 中的硬编码数据一致）
INSERT INTO users (id, name) VALUES 
(1, '张三'),
(2, '李四'),
(3, '王五');

-- 查询验证
SELECT * FROM users;

