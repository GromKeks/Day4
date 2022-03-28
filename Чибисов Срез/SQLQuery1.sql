create database BasketballSystem

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/28/2022 15:42:07
-- Generated from EDMX file: C:\Users\Пользователь\Desktop\NBA Стажировка\NBA Management System1\NBA Management System\NBA Management System\Entities\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BasketballSystem];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Division__Confer__4222D4EF]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Division] DROP CONSTRAINT [FK__Division__Confer__4222D4EF];
GO
IF OBJECT_ID(N'[dbo].[FK__Match__MatchType__628FA481]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Match] DROP CONSTRAINT [FK__Match__MatchType__628FA481];
GO
IF OBJECT_ID(N'[dbo].[FK__Match__SeasonId__5EBF139D]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Match] DROP CONSTRAINT [FK__Match__SeasonId__5EBF139D];
GO
IF OBJECT_ID(N'[dbo].[FK__Match__StatusId__619B8048]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Match] DROP CONSTRAINT [FK__Match__StatusId__619B8048];
GO
IF OBJECT_ID(N'[dbo].[FK__MatchLog__Action__6383C8BA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MatchLog] DROP CONSTRAINT [FK__MatchLog__Action__6383C8BA];
GO
IF OBJECT_ID(N'[dbo].[FK__MatchLog__MatchI__693CA210]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MatchLog] DROP CONSTRAINT [FK__MatchLog__MatchI__693CA210];
GO
IF OBJECT_ID(N'[dbo].[FK__MatchLog__Player__6477ECF3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MatchLog] DROP CONSTRAINT [FK__MatchLog__Player__6477ECF3];
GO
IF OBJECT_ID(N'[dbo].[FK__MatchLog__TeamId__5AEE82B9]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MatchLog] DROP CONSTRAINT [FK__MatchLog__TeamId__5AEE82B9];
GO
IF OBJECT_ID(N'[dbo].[FK__Player__Position__6754599E]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Player] DROP CONSTRAINT [FK__Player__Position__6754599E];
GO
IF OBJECT_ID(N'[dbo].[FK__PlayerInT__Playe__656C112C]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlayerInTeam] DROP CONSTRAINT [FK__PlayerInT__Playe__656C112C];
GO
IF OBJECT_ID(N'[dbo].[FK__PlayerInT__Seaso__4E88ABD4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlayerInTeam] DROP CONSTRAINT [FK__PlayerInT__Seaso__4E88ABD4];
GO
IF OBJECT_ID(N'[dbo].[FK__PlayerInT__TeamI__5812160E]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlayerInTeam] DROP CONSTRAINT [FK__PlayerInT__TeamI__5812160E];
GO
IF OBJECT_ID(N'[dbo].[FK__PlayerSta__Match__6A30C649]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlayerStatistics] DROP CONSTRAINT [FK__PlayerSta__Match__6A30C649];
GO
IF OBJECT_ID(N'[dbo].[FK__PlayerSta__Playe__66603565]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlayerStatistics] DROP CONSTRAINT [FK__PlayerSta__Playe__66603565];
GO
IF OBJECT_ID(N'[dbo].[FK__PlayerSta__TeamI__5BE2A6F2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlayerStatistics] DROP CONSTRAINT [FK__PlayerSta__TeamI__5BE2A6F2];
GO
IF OBJECT_ID(N'[dbo].[FK__PostSeaso__Seaso__534D60F1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PostSeason] DROP CONSTRAINT [FK__PostSeaso__Seaso__534D60F1];
GO
IF OBJECT_ID(N'[dbo].[FK__PostSeaso__TeamI__59063A47]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PostSeason] DROP CONSTRAINT [FK__PostSeaso__TeamI__59063A47];
GO
IF OBJECT_ID(N'[dbo].[FK__Team__DivisionId__571DF1D5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Team] DROP CONSTRAINT [FK__Team__DivisionId__571DF1D5];
GO
IF OBJECT_ID(N'[dbo].[FK__User__RoleId__5629CD9C]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK__User__RoleId__5629CD9C];
GO
IF OBJECT_ID(N'[dbo].[FK_Match_Team2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Match] DROP CONSTRAINT [FK_Match_Team2];
GO
IF OBJECT_ID(N'[dbo].[FK_Match_Team3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Match] DROP CONSTRAINT [FK_Match_Team3];
GO
IF OBJECT_ID(N'[dbo].[FK_Player_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Player] DROP CONSTRAINT [FK_Player_Country];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ActionType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActionType];
GO
IF OBJECT_ID(N'[dbo].[Conference]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Conference];
GO
IF OBJECT_ID(N'[dbo].[Country]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Country];
GO
IF OBJECT_ID(N'[dbo].[Division]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Division];
GO
IF OBJECT_ID(N'[dbo].[Match]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Match];
GO
IF OBJECT_ID(N'[dbo].[MatchLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MatchLog];
GO
IF OBJECT_ID(N'[dbo].[MatchType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MatchType];
GO
IF OBJECT_ID(N'[dbo].[Player]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Player];
GO
IF OBJECT_ID(N'[dbo].[PlayerInTeam]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlayerInTeam];
GO
IF OBJECT_ID(N'[dbo].[PlayerStatistics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlayerStatistics];
GO
IF OBJECT_ID(N'[dbo].[Position]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Position];
GO
IF OBJECT_ID(N'[dbo].[PostSeason]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PostSeason];
GO
IF OBJECT_ID(N'[dbo].[Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Role];
GO
IF OBJECT_ID(N'[dbo].[Season]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Season];
GO
IF OBJECT_ID(N'[dbo].[Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Status];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Team]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Team];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ActionType'
CREATE TABLE [dbo].[ActionType] (
    [ActionTypeId] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL
);
GO

-- Creating table 'Conference'
CREATE TABLE [dbo].[Conference] (
    [Conference_id] int  NOT NULL,
    [Name] varchar(50)  NOT NULL
);
GO

-- Creating table 'Country'
CREATE TABLE [dbo].[Country] (
    [CountryCode] int  NOT NULL,
    [CountryName] varchar(50)  NOT NULL
);
GO

-- Creating table 'Division'
CREATE TABLE [dbo].[Division] (
    [DivisionId] int  NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [Conference_id] int  NOT NULL
);
GO

-- Creating table 'Match'
CREATE TABLE [dbo].[Match] (
    [MatchId] int  NOT NULL,
    [StartTime] datetime  NOT NULL,
    [Team_Away_Score] int  NOT NULL,
    [Team_Home_Score] int  NOT NULL,
    [Location] varchar(200)  NOT NULL,
    [StatusId] int  NOT NULL,
    [SeasonId] int  NOT NULL,
    [Team_Away] int  NOT NULL,
    [Team_Home] int  NOT NULL,
    [MatchTypeId] int  NOT NULL
);
GO

-- Creating table 'MatchLog'
CREATE TABLE [dbo].[MatchLog] (
    [IdMatch] int  NOT NULL,
    [Quarter] int  NOT NULL,
    [OccurTime] varchar(10)  NOT NULL,
    [Remark] varchar(300)  NULL,
    [ActionType] int  NOT NULL,
    [MatchId] int  NOT NULL,
    [TeamId] int  NOT NULL,
    [PlayerId] int  NOT NULL
);
GO

-- Creating table 'MatchType'
CREATE TABLE [dbo].[MatchType] (
    [MatchTypeId] int  NOT NULL,
    [Name] varchar(50)  NOT NULL
);
GO

-- Creating table 'Player'
CREATE TABLE [dbo].[Player] (
    [PlayerId] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [JoinYear] datetime  NOT NULL,
    [Weight] decimal(10,2)  NOT NULL,
    [Height] decimal(10,2)  NOT NULL,
    [DateOfBirth] datetime  NOT NULL,
    [College] varchar(50)  NULL,
    [Img] varbinary(max)  NULL,
    [IsRetirment] bit  NOT NULL,
    [RetirmentDate] datetime  NULL,
    [PositionId] int  NOT NULL,
    [CountryCode] int  NOT NULL
);
GO

-- Creating table 'PlayerInTeam'
CREATE TABLE [dbo].[PlayerInTeam] (
    [PlayerInTeamId] int  NOT NULL,
    [ShirtNumber] int  NOT NULL,
    [Salary] decimal(10,2)  NOT NULL,
    [SeasonId] int  NOT NULL,
    [TeamId] int  NOT NULL,
    [PlayerId] int  NOT NULL
);
GO

-- Creating table 'PlayerStatistics'
CREATE TABLE [dbo].[PlayerStatistics] (
    [IdStatistics] int  NOT NULL,
    [IsStarting] int  NOT NULL,
    [Min] decimal(10,2)  NOT NULL,
    [Point] int  NOT NULL,
    [Assist] int  NOT NULL,
    [FieldGoalMade] int  NOT NULL,
    [FieldGoalMissed] int  NOT NULL,
    [C3pointFieldGoalMade] int  NOT NULL,
    [C3pointFieldGoalMissed] int  NOT NULL,
    [FreeThrowMade] int  NOT NULL,
    [FreeThrowMissed] int  NOT NULL,
    [Rebound] int  NOT NULL,
    [OFFR] int  NOT NULL,
    [DFFR] int  NOT NULL,
    [Steal] int  NOT NULL,
    [Block] int  NOT NULL,
    [Turnover] int  NOT NULL,
    [Foul] int  NOT NULL,
    [PlayerId] int  NOT NULL,
    [TeamId] int  NOT NULL,
    [MatchId] int  NOT NULL
);
GO

-- Creating table 'Position'
CREATE TABLE [dbo].[Position] (
    [PositionId] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [Abbr] char(3)  NOT NULL
);
GO

-- Creating table 'PostSeason'
CREATE TABLE [dbo].[PostSeason] (
    [PostSeasonId] int  NOT NULL,
    [Rank] int  NOT NULL,
    [SeasonId] int  NOT NULL,
    [TeamId] int  NOT NULL
);
GO

-- Creating table 'Role'
CREATE TABLE [dbo].[Role] (
    [RoleId] int IDENTITY(1,1) NOT NULL,
    [RoleName] varchar(50)  NOT NULL
);
GO

-- Creating table 'Season'
CREATE TABLE [dbo].[Season] (
    [SeasonId] int  NOT NULL,
    [Name] varchar(50)  NOT NULL
);
GO

-- Creating table 'Status'
CREATE TABLE [dbo].[Status] (
    [StatusId] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Team'
CREATE TABLE [dbo].[Team] (
    [TeamId] int IDENTITY(1,1) NOT NULL,
    [TeamName] varchar(50)  NOT NULL,
    [Coach] varchar(50)  NOT NULL,
    [Abbr] char(3)  NOT NULL,
    [Stadium] varchar(100)  NULL,
    [Logo] varbinary(max)  NULL,
    [DivisionId] int  NOT NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [JobNumber] int IDENTITY(1,1) NOT NULL,
    [RoleId] int  NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [Password] varchar(50)  NOT NULL,
    [Gender] varchar(10)  NOT NULL,
    [DateOfBirth] datetime  NOT NULL,
    [Phone] varchar(20)  NULL,
    [Email] varchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ActionTypeId] in table 'ActionType'
ALTER TABLE [dbo].[ActionType]
ADD CONSTRAINT [PK_ActionType]
    PRIMARY KEY CLUSTERED ([ActionTypeId] ASC);
GO

-- Creating primary key on [Conference_id] in table 'Conference'
ALTER TABLE [dbo].[Conference]
ADD CONSTRAINT [PK_Conference]
    PRIMARY KEY CLUSTERED ([Conference_id] ASC);
GO

-- Creating primary key on [CountryCode] in table 'Country'
ALTER TABLE [dbo].[Country]
ADD CONSTRAINT [PK_Country]
    PRIMARY KEY CLUSTERED ([CountryCode] ASC);
GO

-- Creating primary key on [DivisionId] in table 'Division'
ALTER TABLE [dbo].[Division]
ADD CONSTRAINT [PK_Division]
    PRIMARY KEY CLUSTERED ([DivisionId] ASC);
GO

-- Creating primary key on [MatchId] in table 'Match'
ALTER TABLE [dbo].[Match]
ADD CONSTRAINT [PK_Match]
    PRIMARY KEY CLUSTERED ([MatchId] ASC);
GO

-- Creating primary key on [IdMatch] in table 'MatchLog'
ALTER TABLE [dbo].[MatchLog]
ADD CONSTRAINT [PK_MatchLog]
    PRIMARY KEY CLUSTERED ([IdMatch] ASC);
GO

-- Creating primary key on [MatchTypeId] in table 'MatchType'
ALTER TABLE [dbo].[MatchType]
ADD CONSTRAINT [PK_MatchType]
    PRIMARY KEY CLUSTERED ([MatchTypeId] ASC);
GO

-- Creating primary key on [PlayerId] in table 'Player'
ALTER TABLE [dbo].[Player]
ADD CONSTRAINT [PK_Player]
    PRIMARY KEY CLUSTERED ([PlayerId] ASC);
GO

-- Creating primary key on [PlayerId] in table 'PlayerInTeam'
ALTER TABLE [dbo].[PlayerInTeam]
ADD CONSTRAINT [PK_PlayerInTeam]
    PRIMARY KEY CLUSTERED ([PlayerId] ASC);
GO

-- Creating primary key on [IdStatistics] in table 'PlayerStatistics'
ALTER TABLE [dbo].[PlayerStatistics]
ADD CONSTRAINT [PK_PlayerStatistics]
    PRIMARY KEY CLUSTERED ([IdStatistics] ASC);
GO

-- Creating primary key on [PositionId] in table 'Position'
ALTER TABLE [dbo].[Position]
ADD CONSTRAINT [PK_Position]
    PRIMARY KEY CLUSTERED ([PositionId] ASC);
GO

-- Creating primary key on [PostSeasonId] in table 'PostSeason'
ALTER TABLE [dbo].[PostSeason]
ADD CONSTRAINT [PK_PostSeason]
    PRIMARY KEY CLUSTERED ([PostSeasonId] ASC);
GO

-- Creating primary key on [RoleId] in table 'Role'
ALTER TABLE [dbo].[Role]
ADD CONSTRAINT [PK_Role]
    PRIMARY KEY CLUSTERED ([RoleId] ASC);
GO

-- Creating primary key on [SeasonId] in table 'Season'
ALTER TABLE [dbo].[Season]
ADD CONSTRAINT [PK_Season]
    PRIMARY KEY CLUSTERED ([SeasonId] ASC);
GO

-- Creating primary key on [StatusId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [PK_Status]
    PRIMARY KEY CLUSTERED ([StatusId] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [TeamId] in table 'Team'
ALTER TABLE [dbo].[Team]
ADD CONSTRAINT [PK_Team]
    PRIMARY KEY CLUSTERED ([TeamId] ASC);
GO

-- Creating primary key on [JobNumber] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([JobNumber] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ActionType] in table 'MatchLog'
ALTER TABLE [dbo].[MatchLog]
ADD CONSTRAINT [FK__MatchLog__Action__6383C8BA]
    FOREIGN KEY ([ActionType])
    REFERENCES [dbo].[ActionType]
        ([ActionTypeId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__MatchLog__Action__6383C8BA'
CREATE INDEX [IX_FK__MatchLog__Action__6383C8BA]
ON [dbo].[MatchLog]
    ([ActionType]);
GO

-- Creating foreign key on [Conference_id] in table 'Division'
ALTER TABLE [dbo].[Division]
ADD CONSTRAINT [FK__Division__Confer__4222D4EF]
    FOREIGN KEY ([Conference_id])
    REFERENCES [dbo].[Conference]
        ([Conference_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Division__Confer__4222D4EF'
CREATE INDEX [IX_FK__Division__Confer__4222D4EF]
ON [dbo].[Division]
    ([Conference_id]);
GO

-- Creating foreign key on [CountryCode] in table 'Player'
ALTER TABLE [dbo].[Player]
ADD CONSTRAINT [FK_Player_Country]
    FOREIGN KEY ([CountryCode])
    REFERENCES [dbo].[Country]
        ([CountryCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Player_Country'
CREATE INDEX [IX_FK_Player_Country]
ON [dbo].[Player]
    ([CountryCode]);
GO

-- Creating foreign key on [DivisionId] in table 'Team'
ALTER TABLE [dbo].[Team]
ADD CONSTRAINT [FK__Team__DivisionId__571DF1D5]
    FOREIGN KEY ([DivisionId])
    REFERENCES [dbo].[Division]
        ([DivisionId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Team__DivisionId__571DF1D5'
CREATE INDEX [IX_FK__Team__DivisionId__571DF1D5]
ON [dbo].[Team]
    ([DivisionId]);
GO

-- Creating foreign key on [MatchTypeId] in table 'Match'
ALTER TABLE [dbo].[Match]
ADD CONSTRAINT [FK__Match__MatchType__628FA481]
    FOREIGN KEY ([MatchTypeId])
    REFERENCES [dbo].[MatchType]
        ([MatchTypeId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Match__MatchType__628FA481'
CREATE INDEX [IX_FK__Match__MatchType__628FA481]
ON [dbo].[Match]
    ([MatchTypeId]);
GO

-- Creating foreign key on [SeasonId] in table 'Match'
ALTER TABLE [dbo].[Match]
ADD CONSTRAINT [FK__Match__SeasonId__5EBF139D]
    FOREIGN KEY ([SeasonId])
    REFERENCES [dbo].[Season]
        ([SeasonId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Match__SeasonId__5EBF139D'
CREATE INDEX [IX_FK__Match__SeasonId__5EBF139D]
ON [dbo].[Match]
    ([SeasonId]);
GO

-- Creating foreign key on [StatusId] in table 'Match'
ALTER TABLE [dbo].[Match]
ADD CONSTRAINT [FK__Match__StatusId__619B8048]
    FOREIGN KEY ([StatusId])
    REFERENCES [dbo].[Status]
        ([StatusId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Match__StatusId__619B8048'
CREATE INDEX [IX_FK__Match__StatusId__619B8048]
ON [dbo].[Match]
    ([StatusId]);
GO

-- Creating foreign key on [MatchId] in table 'MatchLog'
ALTER TABLE [dbo].[MatchLog]
ADD CONSTRAINT [FK__MatchLog__MatchI__693CA210]
    FOREIGN KEY ([MatchId])
    REFERENCES [dbo].[Match]
        ([MatchId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__MatchLog__MatchI__693CA210'
CREATE INDEX [IX_FK__MatchLog__MatchI__693CA210]
ON [dbo].[MatchLog]
    ([MatchId]);
GO

-- Creating foreign key on [MatchId] in table 'PlayerStatistics'
ALTER TABLE [dbo].[PlayerStatistics]
ADD CONSTRAINT [FK__PlayerSta__Match__6A30C649]
    FOREIGN KEY ([MatchId])
    REFERENCES [dbo].[Match]
        ([MatchId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__PlayerSta__Match__6A30C649'
CREATE INDEX [IX_FK__PlayerSta__Match__6A30C649]
ON [dbo].[PlayerStatistics]
    ([MatchId]);
GO

-- Creating foreign key on [Team_Away] in table 'Match'
ALTER TABLE [dbo].[Match]
ADD CONSTRAINT [FK_Match_Team2]
    FOREIGN KEY ([Team_Away])
    REFERENCES [dbo].[Team]
        ([TeamId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Match_Team2'
CREATE INDEX [IX_FK_Match_Team2]
ON [dbo].[Match]
    ([Team_Away]);
GO

-- Creating foreign key on [Team_Home] in table 'Match'
ALTER TABLE [dbo].[Match]
ADD CONSTRAINT [FK_Match_Team3]
    FOREIGN KEY ([Team_Home])
    REFERENCES [dbo].[Team]
        ([TeamId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Match_Team3'
CREATE INDEX [IX_FK_Match_Team3]
ON [dbo].[Match]
    ([Team_Home]);
GO

-- Creating foreign key on [PlayerId] in table 'MatchLog'
ALTER TABLE [dbo].[MatchLog]
ADD CONSTRAINT [FK__MatchLog__Player__6477ECF3]
    FOREIGN KEY ([PlayerId])
    REFERENCES [dbo].[Player]
        ([PlayerId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__MatchLog__Player__6477ECF3'
CREATE INDEX [IX_FK__MatchLog__Player__6477ECF3]
ON [dbo].[MatchLog]
    ([PlayerId]);
GO

-- Creating foreign key on [TeamId] in table 'MatchLog'
ALTER TABLE [dbo].[MatchLog]
ADD CONSTRAINT [FK__MatchLog__TeamId__5AEE82B9]
    FOREIGN KEY ([TeamId])
    REFERENCES [dbo].[Team]
        ([TeamId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__MatchLog__TeamId__5AEE82B9'
CREATE INDEX [IX_FK__MatchLog__TeamId__5AEE82B9]
ON [dbo].[MatchLog]
    ([TeamId]);
GO

-- Creating foreign key on [PositionId] in table 'Player'
ALTER TABLE [dbo].[Player]
ADD CONSTRAINT [FK__Player__Position__6754599E]
    FOREIGN KEY ([PositionId])
    REFERENCES [dbo].[Position]
        ([PositionId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Player__Position__6754599E'
CREATE INDEX [IX_FK__Player__Position__6754599E]
ON [dbo].[Player]
    ([PositionId]);
GO

-- Creating foreign key on [PlayerId] in table 'PlayerInTeam'
ALTER TABLE [dbo].[PlayerInTeam]
ADD CONSTRAINT [FK__PlayerInT__Playe__656C112C]
    FOREIGN KEY ([PlayerId])
    REFERENCES [dbo].[Player]
        ([PlayerId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [PlayerId] in table 'PlayerStatistics'
ALTER TABLE [dbo].[PlayerStatistics]
ADD CONSTRAINT [FK__PlayerSta__Playe__66603565]
    FOREIGN KEY ([PlayerId])
    REFERENCES [dbo].[Player]
        ([PlayerId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__PlayerSta__Playe__66603565'
CREATE INDEX [IX_FK__PlayerSta__Playe__66603565]
ON [dbo].[PlayerStatistics]
    ([PlayerId]);
GO

-- Creating foreign key on [SeasonId] in table 'PlayerInTeam'
ALTER TABLE [dbo].[PlayerInTeam]
ADD CONSTRAINT [FK__PlayerInT__Seaso__4E88ABD4]
    FOREIGN KEY ([SeasonId])
    REFERENCES [dbo].[Season]
        ([SeasonId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__PlayerInT__Seaso__4E88ABD4'
CREATE INDEX [IX_FK__PlayerInT__Seaso__4E88ABD4]
ON [dbo].[PlayerInTeam]
    ([SeasonId]);
GO

-- Creating foreign key on [TeamId] in table 'PlayerInTeam'
ALTER TABLE [dbo].[PlayerInTeam]
ADD CONSTRAINT [FK__PlayerInT__TeamI__5812160E]
    FOREIGN KEY ([TeamId])
    REFERENCES [dbo].[Team]
        ([TeamId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__PlayerInT__TeamI__5812160E'
CREATE INDEX [IX_FK__PlayerInT__TeamI__5812160E]
ON [dbo].[PlayerInTeam]
    ([TeamId]);
GO

-- Creating foreign key on [TeamId] in table 'PlayerStatistics'
ALTER TABLE [dbo].[PlayerStatistics]
ADD CONSTRAINT [FK__PlayerSta__TeamI__5BE2A6F2]
    FOREIGN KEY ([TeamId])
    REFERENCES [dbo].[Team]
        ([TeamId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__PlayerSta__TeamI__5BE2A6F2'
CREATE INDEX [IX_FK__PlayerSta__TeamI__5BE2A6F2]
ON [dbo].[PlayerStatistics]
    ([TeamId]);
GO

-- Creating foreign key on [SeasonId] in table 'PostSeason'
ALTER TABLE [dbo].[PostSeason]
ADD CONSTRAINT [FK__PostSeaso__Seaso__534D60F1]
    FOREIGN KEY ([SeasonId])
    REFERENCES [dbo].[Season]
        ([SeasonId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__PostSeaso__Seaso__534D60F1'
CREATE INDEX [IX_FK__PostSeaso__Seaso__534D60F1]
ON [dbo].[PostSeason]
    ([SeasonId]);
GO

-- Creating foreign key on [TeamId] in table 'PostSeason'
ALTER TABLE [dbo].[PostSeason]
ADD CONSTRAINT [FK__PostSeaso__TeamI__59063A47]
    FOREIGN KEY ([TeamId])
    REFERENCES [dbo].[Team]
        ([TeamId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__PostSeaso__TeamI__59063A47'
CREATE INDEX [IX_FK__PostSeaso__TeamI__59063A47]
ON [dbo].[PostSeason]
    ([TeamId]);
GO

-- Creating foreign key on [RoleId] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [FK__User__RoleId__5629CD9C]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Role]
        ([RoleId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__User__RoleId__5629CD9C'
CREATE INDEX [IX_FK__User__RoleId__5629CD9C]
ON [dbo].[User]
    ([RoleId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------