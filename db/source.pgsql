--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: icinga_hostgroup_members; Type: TABLE; Schema: public; Owner: icinga; Tablespace: 
--

CREATE TABLE icinga_hostgroup_members (
    hostgroup_member_id bigint NOT NULL,
    instance_id bigint DEFAULT 0,
    hostgroup_id bigint DEFAULT 0,
    host_object_id bigint DEFAULT 0
);


ALTER TABLE public.icinga_hostgroup_members OWNER TO icinga;

--
-- Name: icinga_hostgroup_members_hostgroup_member_id_seq; Type: SEQUENCE; Schema: public; Owner: icinga
--

CREATE SEQUENCE icinga_hostgroup_members_hostgroup_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.icinga_hostgroup_members_hostgroup_member_id_seq OWNER TO icinga;

--
-- Name: icinga_hostgroup_members_hostgroup_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: icinga
--

ALTER SEQUENCE icinga_hostgroup_members_hostgroup_member_id_seq OWNED BY icinga_hostgroup_members.hostgroup_member_id;


--
-- Name: icinga_hostgroup_members_hostgroup_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: icinga
--

SELECT pg_catalog.setval('icinga_hostgroup_members_hostgroup_member_id_seq', 1, true);


--
-- Name: icinga_hostgroups; Type: TABLE; Schema: public; Owner: icinga; Tablespace: 
--

CREATE TABLE icinga_hostgroups (
    hostgroup_id bigint NOT NULL,
    instance_id bigint DEFAULT 0,
    config_type integer DEFAULT 0,
    hostgroup_object_id bigint DEFAULT 0,
    alias text DEFAULT ''::text
);


ALTER TABLE public.icinga_hostgroups OWNER TO icinga;

--
-- Name: icinga_hostgroups_hostgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: icinga
--

CREATE SEQUENCE icinga_hostgroups_hostgroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.icinga_hostgroups_hostgroup_id_seq OWNER TO icinga;

--
-- Name: icinga_hostgroups_hostgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: icinga
--

ALTER SEQUENCE icinga_hostgroups_hostgroup_id_seq OWNED BY icinga_hostgroups.hostgroup_id;


--
-- Name: icinga_hostgroups_hostgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: icinga
--

SELECT pg_catalog.setval('icinga_hostgroups_hostgroup_id_seq', 1, true);


--
-- Name: icinga_hosts; Type: TABLE; Schema: public; Owner: icinga; Tablespace: 
--

CREATE TABLE icinga_hosts (
    host_id bigint NOT NULL,
    instance_id bigint DEFAULT 0,
    config_type integer DEFAULT 0,
    host_object_id bigint DEFAULT 0,
    alias text DEFAULT ''::text,
    display_name text DEFAULT ''::text,
    address text DEFAULT ''::text,
    address6 text DEFAULT ''::text,
    check_command_object_id bigint DEFAULT 0,
    check_command_args text DEFAULT ''::text,
    eventhandler_command_object_id bigint DEFAULT 0,
    eventhandler_command_args text DEFAULT ''::text,
    notification_timeperiod_object_id bigint DEFAULT 0,
    check_timeperiod_object_id bigint DEFAULT 0,
    failure_prediction_options text DEFAULT ''::text,
    check_interval double precision DEFAULT 0,
    retry_interval double precision DEFAULT 0,
    max_check_attempts integer DEFAULT 0,
    first_notification_delay double precision DEFAULT 0,
    notification_interval double precision DEFAULT 0,
    notify_on_down integer DEFAULT 0,
    notify_on_unreachable integer DEFAULT 0,
    notify_on_recovery integer DEFAULT 0,
    notify_on_flapping integer DEFAULT 0,
    notify_on_downtime integer DEFAULT 0,
    stalk_on_up integer DEFAULT 0,
    stalk_on_down integer DEFAULT 0,
    stalk_on_unreachable integer DEFAULT 0,
    flap_detection_enabled integer DEFAULT 0,
    flap_detection_on_up integer DEFAULT 0,
    flap_detection_on_down integer DEFAULT 0,
    flap_detection_on_unreachable integer DEFAULT 0,
    low_flap_threshold double precision DEFAULT 0,
    high_flap_threshold double precision DEFAULT 0,
    process_performance_data integer DEFAULT 0,
    freshness_checks_enabled integer DEFAULT 0,
    freshness_threshold integer DEFAULT 0,
    passive_checks_enabled integer DEFAULT 0,
    event_handler_enabled integer DEFAULT 0,
    active_checks_enabled integer DEFAULT 0,
    retain_status_information integer DEFAULT 0,
    retain_nonstatus_information integer DEFAULT 0,
    notifications_enabled integer DEFAULT 0,
    obsess_over_host integer DEFAULT 0,
    failure_prediction_enabled integer DEFAULT 0,
    notes text DEFAULT ''::text,
    notes_url text DEFAULT ''::text,
    action_url text DEFAULT ''::text,
    icon_image text DEFAULT ''::text,
    icon_image_alt text DEFAULT ''::text,
    vrml_image text DEFAULT ''::text,
    statusmap_image text DEFAULT ''::text,
    have_2d_coords integer DEFAULT 0,
    x_2d integer DEFAULT 0,
    y_2d integer DEFAULT 0,
    have_3d_coords integer DEFAULT 0,
    x_3d double precision DEFAULT 0,
    y_3d double precision DEFAULT 0,
    z_3d double precision DEFAULT 0
);


ALTER TABLE public.icinga_hosts OWNER TO icinga;

--
-- Name: icinga_hosts_host_id_seq; Type: SEQUENCE; Schema: public; Owner: icinga
--

CREATE SEQUENCE icinga_hosts_host_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.icinga_hosts_host_id_seq OWNER TO icinga;

--
-- Name: icinga_hosts_host_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: icinga
--

ALTER SEQUENCE icinga_hosts_host_id_seq OWNED BY icinga_hosts.host_id;


--
-- Name: icinga_hosts_host_id_seq; Type: SEQUENCE SET; Schema: public; Owner: icinga
--

SELECT pg_catalog.setval('icinga_hosts_host_id_seq', 1, true);


--
-- Name: icinga_objects; Type: TABLE; Schema: public; Owner: icinga; Tablespace: 
--

CREATE TABLE icinga_objects (
    object_id bigint NOT NULL,
    instance_id bigint DEFAULT 0,
    objecttype_id bigint DEFAULT 0,
    name1 text,
    name2 text,
    is_active integer DEFAULT 0
);


ALTER TABLE public.icinga_objects OWNER TO icinga;

--
-- Name: icinga_objects_object_id_seq; Type: SEQUENCE; Schema: public; Owner: icinga
--

CREATE SEQUENCE icinga_objects_object_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.icinga_objects_object_id_seq OWNER TO icinga;

--
-- Name: icinga_objects_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: icinga
--

ALTER SEQUENCE icinga_objects_object_id_seq OWNED BY icinga_objects.object_id;


--
-- Name: icinga_objects_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: icinga
--

SELECT pg_catalog.setval('icinga_objects_object_id_seq', 50, true);


--
-- Name: icinga_servicechecks; Type: TABLE; Schema: public; Owner: icinga; Tablespace: 
--

CREATE TABLE icinga_servicechecks (
    servicecheck_id bigint NOT NULL,
    instance_id bigint DEFAULT 0,
    service_object_id bigint DEFAULT 0,
    check_type integer DEFAULT 0,
    current_check_attempt integer DEFAULT 0,
    max_check_attempts integer DEFAULT 0,
    state integer DEFAULT 0,
    state_type integer DEFAULT 0,
    start_time timestamp with time zone DEFAULT '1970-01-01 00:00:00-05'::timestamp with time zone,
    start_time_usec integer DEFAULT 0,
    end_time timestamp with time zone DEFAULT '1970-01-01 00:00:00-05'::timestamp with time zone,
    end_time_usec integer DEFAULT 0,
    command_object_id bigint DEFAULT 0,
    command_args text DEFAULT ''::text,
    command_line text DEFAULT ''::text,
    timeout integer DEFAULT 0,
    early_timeout integer DEFAULT 0,
    execution_time double precision DEFAULT 0,
    latency double precision DEFAULT 0,
    return_code integer DEFAULT 0,
    output text DEFAULT ''::text,
    long_output text DEFAULT ''::text,
    perfdata text DEFAULT ''::text
);


ALTER TABLE public.icinga_servicechecks OWNER TO icinga;

--
-- Name: icinga_servicechecks_servicecheck_id_seq; Type: SEQUENCE; Schema: public; Owner: icinga
--

CREATE SEQUENCE icinga_servicechecks_servicecheck_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.icinga_servicechecks_servicecheck_id_seq OWNER TO icinga;

--
-- Name: icinga_servicechecks_servicecheck_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: icinga
--

ALTER SEQUENCE icinga_servicechecks_servicecheck_id_seq OWNED BY icinga_servicechecks.servicecheck_id;


--
-- Name: icinga_servicechecks_servicecheck_id_seq; Type: SEQUENCE SET; Schema: public; Owner: icinga
--

SELECT pg_catalog.setval('icinga_servicechecks_servicecheck_id_seq', 1405, true);


--
-- Name: icinga_servicegroup_members; Type: TABLE; Schema: public; Owner: icinga; Tablespace: 
--

CREATE TABLE icinga_servicegroup_members (
    servicegroup_member_id bigint NOT NULL,
    instance_id bigint DEFAULT 0,
    servicegroup_id bigint DEFAULT 0,
    service_object_id bigint DEFAULT 0
);


ALTER TABLE public.icinga_servicegroup_members OWNER TO icinga;

--
-- Name: icinga_servicegroup_members_servicegroup_member_id_seq; Type: SEQUENCE; Schema: public; Owner: icinga
--

CREATE SEQUENCE icinga_servicegroup_members_servicegroup_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.icinga_servicegroup_members_servicegroup_member_id_seq OWNER TO icinga;

--
-- Name: icinga_servicegroup_members_servicegroup_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: icinga
--

ALTER SEQUENCE icinga_servicegroup_members_servicegroup_member_id_seq OWNED BY icinga_servicegroup_members.servicegroup_member_id;


--
-- Name: icinga_servicegroup_members_servicegroup_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: icinga
--

SELECT pg_catalog.setval('icinga_servicegroup_members_servicegroup_member_id_seq', 1, false);


--
-- Name: icinga_servicegroups; Type: TABLE; Schema: public; Owner: icinga; Tablespace: 
--

CREATE TABLE icinga_servicegroups (
    servicegroup_id bigint NOT NULL,
    instance_id bigint DEFAULT 0,
    config_type integer DEFAULT 0,
    servicegroup_object_id bigint DEFAULT 0,
    alias text DEFAULT ''::text
);


ALTER TABLE public.icinga_servicegroups OWNER TO icinga;

--
-- Name: icinga_servicegroups_servicegroup_id_seq; Type: SEQUENCE; Schema: public; Owner: icinga
--

CREATE SEQUENCE icinga_servicegroups_servicegroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.icinga_servicegroups_servicegroup_id_seq OWNER TO icinga;

--
-- Name: icinga_servicegroups_servicegroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: icinga
--

ALTER SEQUENCE icinga_servicegroups_servicegroup_id_seq OWNED BY icinga_servicegroups.servicegroup_id;


--
-- Name: icinga_servicegroups_servicegroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: icinga
--

SELECT pg_catalog.setval('icinga_servicegroups_servicegroup_id_seq', 1, false);


--
-- Name: icinga_services; Type: TABLE; Schema: public; Owner: icinga; Tablespace: 
--

CREATE TABLE icinga_services (
    service_id bigint NOT NULL,
    instance_id bigint DEFAULT 0,
    config_type integer DEFAULT 0,
    host_object_id bigint DEFAULT 0,
    service_object_id bigint DEFAULT 0,
    display_name text DEFAULT ''::text,
    check_command_object_id bigint DEFAULT 0,
    check_command_args text DEFAULT ''::text,
    eventhandler_command_object_id bigint DEFAULT 0,
    eventhandler_command_args text DEFAULT ''::text,
    notification_timeperiod_object_id bigint DEFAULT 0,
    check_timeperiod_object_id bigint DEFAULT 0,
    failure_prediction_options text DEFAULT ''::text,
    check_interval double precision DEFAULT 0,
    retry_interval double precision DEFAULT 0,
    max_check_attempts integer DEFAULT 0,
    first_notification_delay double precision DEFAULT 0,
    notification_interval double precision DEFAULT 0,
    notify_on_warning integer DEFAULT 0,
    notify_on_unknown integer DEFAULT 0,
    notify_on_critical integer DEFAULT 0,
    notify_on_recovery integer DEFAULT 0,
    notify_on_flapping integer DEFAULT 0,
    notify_on_downtime integer DEFAULT 0,
    stalk_on_ok integer DEFAULT 0,
    stalk_on_warning integer DEFAULT 0,
    stalk_on_unknown integer DEFAULT 0,
    stalk_on_critical integer DEFAULT 0,
    is_volatile integer DEFAULT 0,
    flap_detection_enabled integer DEFAULT 0,
    flap_detection_on_ok integer DEFAULT 0,
    flap_detection_on_warning integer DEFAULT 0,
    flap_detection_on_unknown integer DEFAULT 0,
    flap_detection_on_critical integer DEFAULT 0,
    low_flap_threshold double precision DEFAULT 0,
    high_flap_threshold double precision DEFAULT 0,
    process_performance_data integer DEFAULT 0,
    freshness_checks_enabled integer DEFAULT 0,
    freshness_threshold integer DEFAULT 0,
    passive_checks_enabled integer DEFAULT 0,
    event_handler_enabled integer DEFAULT 0,
    active_checks_enabled integer DEFAULT 0,
    retain_status_information integer DEFAULT 0,
    retain_nonstatus_information integer DEFAULT 0,
    notifications_enabled integer DEFAULT 0,
    obsess_over_service integer DEFAULT 0,
    failure_prediction_enabled integer DEFAULT 0,
    notes text DEFAULT ''::text,
    notes_url text DEFAULT ''::text,
    action_url text DEFAULT ''::text,
    icon_image text DEFAULT ''::text,
    icon_image_alt text DEFAULT ''::text
);


ALTER TABLE public.icinga_services OWNER TO icinga;

--
-- Name: icinga_services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: icinga
--

CREATE SEQUENCE icinga_services_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.icinga_services_service_id_seq OWNER TO icinga;

--
-- Name: icinga_services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: icinga
--

ALTER SEQUENCE icinga_services_service_id_seq OWNED BY icinga_services.service_id;


--
-- Name: icinga_services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: icinga
--

SELECT pg_catalog.setval('icinga_services_service_id_seq', 9, true);


--
-- Name: hostgroup_member_id; Type: DEFAULT; Schema: public; Owner: icinga
--

ALTER TABLE ONLY icinga_hostgroup_members ALTER COLUMN hostgroup_member_id SET DEFAULT nextval('icinga_hostgroup_members_hostgroup_member_id_seq'::regclass);


--
-- Name: hostgroup_id; Type: DEFAULT; Schema: public; Owner: icinga
--

ALTER TABLE ONLY icinga_hostgroups ALTER COLUMN hostgroup_id SET DEFAULT nextval('icinga_hostgroups_hostgroup_id_seq'::regclass);


--
-- Name: host_id; Type: DEFAULT; Schema: public; Owner: icinga
--

ALTER TABLE ONLY icinga_hosts ALTER COLUMN host_id SET DEFAULT nextval('icinga_hosts_host_id_seq'::regclass);


--
-- Name: object_id; Type: DEFAULT; Schema: public; Owner: icinga
--

ALTER TABLE ONLY icinga_objects ALTER COLUMN object_id SET DEFAULT nextval('icinga_objects_object_id_seq'::regclass);


--
-- Name: servicecheck_id; Type: DEFAULT; Schema: public; Owner: icinga
--

ALTER TABLE ONLY icinga_servicechecks ALTER COLUMN servicecheck_id SET DEFAULT nextval('icinga_servicechecks_servicecheck_id_seq'::regclass);


--
-- Name: servicegroup_member_id; Type: DEFAULT; Schema: public; Owner: icinga
--

ALTER TABLE ONLY icinga_servicegroup_members ALTER COLUMN servicegroup_member_id SET DEFAULT nextval('icinga_servicegroup_members_servicegroup_member_id_seq'::regclass);


--
-- Name: servicegroup_id; Type: DEFAULT; Schema: public; Owner: icinga
--

ALTER TABLE ONLY icinga_servicegroups ALTER COLUMN servicegroup_id SET DEFAULT nextval('icinga_servicegroups_servicegroup_id_seq'::regclass);


--
-- Name: service_id; Type: DEFAULT; Schema: public; Owner: icinga
--

ALTER TABLE ONLY icinga_services ALTER COLUMN service_id SET DEFAULT nextval('icinga_services_service_id_seq'::regclass);


--
-- Data for Name: icinga_hostgroup_members; Type: TABLE DATA; Schema: public; Owner: icinga
--

COPY icinga_hostgroup_members (hostgroup_member_id, instance_id, hostgroup_id, host_object_id) FROM stdin;
1	1	1	1
\.


--
-- Data for Name: icinga_hostgroups; Type: TABLE DATA; Schema: public; Owner: icinga
--

COPY icinga_hostgroups (hostgroup_id, instance_id, config_type, hostgroup_object_id, alias) FROM stdin;
1	1	1	50	Linux Servers
\.


--
-- Data for Name: icinga_hosts; Type: TABLE DATA; Schema: public; Owner: icinga
--

COPY icinga_hosts (host_id, instance_id, config_type, host_object_id, alias, display_name, address, address6, check_command_object_id, check_command_args, eventhandler_command_object_id, eventhandler_command_args, notification_timeperiod_object_id, check_timeperiod_object_id, failure_prediction_options, check_interval, retry_interval, max_check_attempts, first_notification_delay, notification_interval, notify_on_down, notify_on_unreachable, notify_on_recovery, notify_on_flapping, notify_on_downtime, stalk_on_up, stalk_on_down, stalk_on_unreachable, flap_detection_enabled, flap_detection_on_up, flap_detection_on_down, flap_detection_on_unreachable, low_flap_threshold, high_flap_threshold, process_performance_data, freshness_checks_enabled, freshness_threshold, passive_checks_enabled, event_handler_enabled, active_checks_enabled, retain_status_information, retain_nonstatus_information, notifications_enabled, obsess_over_host, failure_prediction_enabled, notes, notes_url, action_url, icon_image, icon_image_alt, vrml_image, statusmap_image, have_2d_coords, x_2d, y_2d, have_3d_coords, x_3d, y_3d, z_3d) FROM stdin;
1	1	1	1	localhost	localhost	127.0.0.1	localhost	3		0		42	2		5	1	10	0	120	1	1	1	0	0	0	0	0	1	1	1	1	0	0	1	0	0	1	1	1	1	1	1	1	1								0	-1	-1	0	0	0	0
\.


--
-- Data for Name: icinga_objects; Type: TABLE DATA; Schema: public; Owner: icinga
--

COPY icinga_objects (object_id, instance_id, objecttype_id, name1, name2, is_active) FROM stdin;
43	1	12	1	\N	0
44	1	12	2	\N	0
45	1	12	3	\N	0
46	1	12	4	\N	0
47	1	12	5	\N	0
48	1	12	6	\N	0
1	1	1	localhost	\N	1
2	1	9	24x7	\N	1
3	1	12	check-host-alive	\N	1
4	1	2	localhost	Current Users	1
5	1	12	check_local_users	\N	1
6	1	2	localhost	Current Load	1
7	1	2	localhost	HTTP	1
8	1	2	localhost	Icinga Startup Delay	1
9	1	2	localhost	PING	1
10	1	2	localhost	Root Partition	1
11	1	2	localhost	SSH	1
12	1	2	localhost	Swap Usage	1
13	1	2	localhost	Total Processes	1
14	1	10	icingaadmin	\N	1
15	1	12	check_dhcp	\N	1
16	1	12	check_dummy	\N	1
17	1	12	check_ftp	\N	1
18	1	12	check_hpjd	\N	1
19	1	12	check_http	\N	1
20	1	12	check_icinga_startup_delay	\N	1
21	1	12	check_imap	\N	1
22	1	12	check_local_disk	\N	1
23	1	12	check_local_load	\N	1
24	1	12	check_local_mrtgtraf	\N	1
25	1	12	check_local_procs	\N	1
26	1	12	check_local_swap	\N	1
27	1	12	check_nt	\N	1
28	1	12	check_ping	\N	1
29	1	12	check_pop	\N	1
30	1	12	check_smtp	\N	1
31	1	12	check_snmp	\N	1
32	1	12	check_ssh	\N	1
33	1	12	check_tcp	\N	1
34	1	12	check_udp	\N	1
35	1	12	notify-host-by-email	\N	1
36	1	12	notify-service-by-email	\N	1
37	1	12	process-host-perfdata	\N	1
38	1	12	process-service-perfdata	\N	1
39	1	9	24x7_sans_holidays	\N	1
40	1	9	none	\N	1
41	1	9	us-holidays	\N	1
42	1	9	workhours	\N	1
49	1	11	admins	\N	1
50	1	3	linux-servers	\N	1
\.


--
-- Data for Name: icinga_servicechecks; Type: TABLE DATA; Schema: public; Owner: icinga
--

COPY icinga_servicechecks (servicecheck_id, instance_id, service_object_id, check_type, current_check_attempt, max_check_attempts, state, state_type, start_time, start_time_usec, end_time, end_time_usec, command_object_id, command_args, command_line, timeout, early_timeout, execution_time, latency, return_code, output, long_output, perfdata) FROM stdin;
1109	1	10	0	1	4	0	1	2013-08-04 09:34:19-04	5680	2013-08-04 09:34:19-04	15132	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0094500000000000001	0.0050000000000000001	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
1110	1	6	0	1	4	0	1	2013-08-04 09:34:19-04	8211	2013-08-04 09:34:19-04	18437	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01023	0.0080000000000000002	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1111	1	4	0	1	4	0	1	2013-08-04 09:34:19-04	10321	2013-08-04 09:34:19-04	19368	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0090500000000000008	0.01	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1112	1	12	0	1	4	0	1	2013-08-04 09:34:19-04	13840	2013-08-04 09:34:19-04	25951	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.012109999999999999	0.012999999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1113	1	8	0	4	4	2	1	2013-08-04 09:34:19-04	17581	2013-08-04 09:34:19-04	28343	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01076	0.017000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1114	1	7	0	4	4	1	1	2013-08-04 09:34:19-04	20694	2013-08-04 09:34:19-04	35731	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01504	0.02	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003788s;;;0.000000 size=5237B;;;0
1115	1	11	0	1	4	0	1	2013-08-04 09:34:19-04	22218	2013-08-04 09:34:19-04	44438	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02222	0.021999999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009720s;;;0.000000;10.000000
1116	1	13	0	1	4	0	1	2013-08-04 09:34:19-04	26682	2013-08-04 09:34:19-04	48579	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.021899999999999999	0.025999999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
1117	1	9	0	1	4	0	1	2013-08-04 09:34:19-04	29971	2013-08-04 09:34:23-04	46216	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0162399999999998	0.029000000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.048000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1118	1	10	0	1	4	0	1	2013-08-04 09:39:19-04	185047	2013-08-04 09:39:19-04	194269	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0092200000000000008	0.185	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
1119	1	6	0	1	4	0	1	2013-08-04 09:39:19-04	187448	2013-08-04 09:39:19-04	199727	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.012279999999999999	0.187	0	OK - load average: 0.43, 0.10, 0.03		load1=0.430;5.000;10.000;0; load5=0.100;4.000;6.000;0; load15=0.030;3.000;4.000;0;
1120	1	4	0	1	4	0	1	2013-08-04 09:39:19-04	188735	2013-08-04 09:39:19-04	200679	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011939999999999999	0.188	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1121	1	12	0	1	4	0	1	2013-08-04 09:39:19-04	193084	2013-08-04 09:39:19-04	205132	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01205	0.193	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1122	1	8	0	4	4	2	1	2013-08-04 09:39:19-04	198727	2013-08-04 09:39:19-04	216587	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.017860000000000001	0.19800000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1123	1	7	0	4	4	1	1	2013-08-04 09:39:19-04	201644	2013-08-04 09:39:19-04	220427	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.018780000000000002	0.20100000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000930s;;;0.000000 size=5237B;;;0
1124	1	11	0	1	4	0	1	2013-08-04 09:39:19-04	204029	2013-08-04 09:39:19-04	229131	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.025100000000000001	0.20399999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010169s;;;0.000000;10.000000
1125	1	13	0	1	4	0	1	2013-08-04 09:39:19-04	207548	2013-08-04 09:39:19-04	233202	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.025649999999999999	0.20699999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
1126	1	9	0	1	4	0	1	2013-08-04 09:39:19-04	212174	2013-08-04 09:39:23-04	232128	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0199499999999997	0.21199999999999999	0	PING OK - Packet loss = 0%, RTA = 0.06 ms		rta=0.056000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1127	1	10	0	1	4	0	1	2013-08-04 09:44:19-04	127264	2013-08-04 09:44:19-04	139408	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01214	0.127	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
1128	1	6	0	1	4	0	1	2013-08-04 09:44:19-04	131714	2013-08-04 09:44:19-04	141338	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0096200000000000001	0.13100000000000001	0	OK - load average: 0.00, 0.05, 0.02		load1=0.000;5.000;10.000;0; load5=0.050;4.000;6.000;0; load15=0.020;3.000;4.000;0;
1129	1	4	0	1	4	0	1	2013-08-04 09:44:19-04	133694	2013-08-04 09:44:19-04	145037	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011339999999999999	0.13300000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1130	1	12	0	1	4	0	1	2013-08-04 09:44:19-04	134668	2013-08-04 09:44:19-04	148029	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01336	0.13400000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1131	1	8	0	4	4	2	1	2013-08-04 09:44:19-04	140194	2013-08-04 09:44:19-04	155847	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015650000000000001	0.14000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1132	1	7	0	4	4	1	1	2013-08-04 09:44:19-04	143795	2013-08-04 09:44:19-04	160547	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.016750000000000001	0.14299999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.006 second response time		time=0.005690s;;;0.000000 size=5237B;;;0
1133	1	11	0	1	4	0	1	2013-08-04 09:44:19-04	147060	2013-08-04 09:44:19-04	169335	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022270000000000002	0.14699999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011477s;;;0.000000;10.000000
1134	1	13	0	1	4	0	1	2013-08-04 09:44:19-04	149186	2013-08-04 09:44:19-04	173729	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024539999999999999	0.14899999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
1135	1	9	0	1	4	0	1	2013-08-04 09:44:19-04	152988	2013-08-04 09:44:23-04	170231	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0172400000000001	0.152	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.047000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1136	1	10	0	1	4	0	1	2013-08-04 09:49:19-04	59435	2013-08-04 09:49:19-04	69310	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0098799999999999999	0.058999999999999997	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2626MB;14167;15938;0;17709
1137	1	6	0	1	4	0	1	2013-08-04 09:49:19-04	61917	2013-08-04 09:49:19-04	71310	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0093900000000000008	0.060999999999999999	0	OK - load average: 0.00, 0.01, 0.00		load1=0.000;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1138	1	4	0	1	4	0	1	2013-08-04 09:49:19-04	63755	2013-08-04 09:49:19-04	73603	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0098499999999999994	0.063	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1139	1	12	0	1	4	0	1	2013-08-04 09:49:19-04	66162	2013-08-04 09:49:19-04	77032	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.010869999999999999	0.066000000000000003	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1140	1	8	0	4	4	2	1	2013-08-04 09:49:19-04	70234	2013-08-04 09:49:19-04	83564	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01333	0.070000000000000007	127	The command defined for service Icinga Startup Delay does not exist\n		
1141	1	7	0	4	4	1	1	2013-08-04 09:49:19-04	74460	2013-08-04 09:49:19-04	90285	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015820000000000001	0.073999999999999996	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000517s;;;0.000000 size=5237B;;;0
1142	1	11	0	1	4	0	1	2013-08-04 09:49:19-04	77753	2013-08-04 09:49:19-04	96565	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.01881	0.076999999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.007589s;;;0.000000;10.000000
1143	1	13	0	1	4	0	1	2013-08-04 09:49:19-04	80593	2013-08-04 09:49:19-04	104390	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023800000000000002	0.080000000000000002	0	PROCS OK: 102 processes with STATE = RSZDT		
1144	1	9	0	1	4	0	1	2013-08-04 09:49:19-04	84352	2013-08-04 09:49:23-04	100163	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0158100000000001	0.084000000000000005	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1145	1	10	0	1	4	0	1	2013-08-04 09:54:19-04	251079	2013-08-04 09:54:19-04	262209	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.011129999999999999	0.251	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2626MB;14167;15938;0;17709
1146	1	6	0	1	4	0	1	2013-08-04 09:54:19-04	255278	2013-08-04 09:54:19-04	266340	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01106	0.255	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1147	1	4	0	1	4	0	1	2013-08-04 09:54:19-04	257196	2013-08-04 09:54:19-04	267625	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01043	0.25700000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1148	1	12	0	1	4	0	1	2013-08-04 09:54:19-04	261024	2013-08-04 09:54:19-04	273497	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01247	0.26100000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1149	1	8	0	4	4	2	1	2013-08-04 09:54:19-04	264970	2013-08-04 09:54:19-04	276976	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01201	0.26400000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1150	1	7	0	4	4	1	1	2013-08-04 09:54:19-04	269012	2013-08-04 09:54:19-04	284749	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015740000000000001	0.26800000000000002	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003973s;;;0.000000 size=5237B;;;0
1151	1	11	0	1	4	0	1	2013-08-04 09:54:19-04	273025	2013-08-04 09:54:19-04	291834	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.01881	0.27300000000000002	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.008536s;;;0.000000;10.000000
1152	1	13	0	1	4	0	1	2013-08-04 09:54:19-04	275040	2013-08-04 09:54:19-04	298973	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02393	0.27500000000000002	0	PROCS OK: 100 processes with STATE = RSZDT		
1153	1	9	0	1	4	0	1	2013-08-04 09:54:19-04	278788	2013-08-04 09:54:23-04	296175	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0173899999999998	0.27800000000000002	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.042000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1154	1	10	0	1	4	0	1	2013-08-04 09:59:19-04	180010	2013-08-04 09:59:19-04	191252	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01124	0.17899999999999999	0	DISK OK - free space: / 14180 MB (84% inode=90%):		/=2629MB;14167;15938;0;17709
1155	1	6	0	1	4	0	1	2013-08-04 09:59:19-04	184053	2013-08-04 09:59:19-04	193108	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0090600000000000003	0.184	0	OK - load average: 0.01, 0.02, 0.00		load1=0.010;5.000;10.000;0; load5=0.020;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1156	1	4	0	1	4	0	1	2013-08-04 09:59:19-04	185266	2013-08-04 09:59:19-04	196326	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01106	0.185	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1157	1	12	0	1	4	0	1	2013-08-04 09:59:19-04	186124	2013-08-04 09:59:19-04	199214	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.013089999999999999	0.186	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1158	1	8	0	4	4	2	1	2013-08-04 09:59:19-04	191935	2013-08-04 09:59:19-04	207868	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01593	0.191	127	The command defined for service Icinga Startup Delay does not exist\n		
1159	1	7	0	4	4	1	1	2013-08-04 09:59:19-04	195246	2013-08-04 09:59:19-04	210971	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015720000000000001	0.19500000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003134s;;;0.000000 size=5237B;;;0
1160	1	11	0	1	4	0	1	2013-08-04 09:59:19-04	200108	2013-08-04 09:59:19-04	219198	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.019089999999999999	0.20000000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009308s;;;0.000000;10.000000
1161	1	13	0	1	4	0	1	2013-08-04 09:59:19-04	203245	2013-08-04 09:59:19-04	225011	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.021770000000000001	0.20300000000000001	0	PROCS OK: 101 processes with STATE = RSZDT		
1162	1	9	0	1	4	0	1	2013-08-04 09:59:19-04	205072	2013-08-04 09:59:23-04	221115	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0160400000000003	0.20499999999999999	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.038000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1163	1	10	0	1	4	0	1	2013-08-04 10:04:19-04	94531	2013-08-04 10:04:19-04	105988	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01146	0.094	0	DISK OK - free space: / 14181 MB (84% inode=90%):		/=2628MB;14167;15938;0;17709
1164	1	6	0	1	4	0	1	2013-08-04 10:04:19-04	98769	2013-08-04 10:04:19-04	110040	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.011270000000000001	0.098000000000000004	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1165	1	4	0	1	4	0	1	2013-08-04 10:04:19-04	100098	2013-08-04 10:04:19-04	111276	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011180000000000001	0.10000000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1166	1	12	0	1	4	0	1	2013-08-04 10:04:19-04	104607	2013-08-04 10:04:19-04	116299	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.011690000000000001	0.104	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1167	1	8	0	4	4	2	1	2013-08-04 10:04:19-04	108913	2013-08-04 10:04:19-04	120112	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.0112	0.108	127	The command defined for service Icinga Startup Delay does not exist\n		
1168	1	7	0	4	4	1	1	2013-08-04 10:04:19-04	112502	2013-08-04 10:04:19-04	127626	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01512	0.112	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003648s;;;0.000000 size=5237B;;;0
1169	1	11	0	1	4	0	1	2013-08-04 10:04:19-04	115232	2013-08-04 10:04:19-04	141926	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.026689999999999998	0.115	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.015187s;;;0.000000;10.000000
1170	1	13	0	1	4	0	1	2013-08-04 10:04:19-04	118158	2013-08-04 10:04:19-04	151531	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.033369999999999997	0.11799999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
1171	1	9	0	1	4	0	1	2013-08-04 10:04:19-04	121824	2013-08-04 10:04:23-04	144067	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.02224	0.121	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.040000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1172	1	10	0	1	4	0	1	2013-08-04 10:09:19-04	216054	2013-08-04 10:09:19-04	226881	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010829999999999999	0.215	0	DISK OK - free space: / 14181 MB (84% inode=90%):		/=2628MB;14167;15938;0;17709
1173	1	6	0	1	4	0	1	2013-08-04 10:09:19-04	220243	2013-08-04 10:09:19-04	230566	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010319999999999999	0.22	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1174	1	4	0	1	4	0	1	2013-08-04 10:09:19-04	221469	2013-08-04 10:09:19-04	231608	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01014	0.221	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1175	1	12	0	1	4	0	1	2013-08-04 10:09:19-04	225890	2013-08-04 10:09:19-04	237776	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01189	0.22500000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1176	1	8	0	4	4	2	1	2013-08-04 10:09:19-04	229535	2013-08-04 10:09:19-04	244747	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01521	0.22900000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1177	1	7	0	4	4	1	1	2013-08-04 10:09:19-04	232648	2013-08-04 10:09:19-04	248295	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015650000000000001	0.23200000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000577s;;;0.000000 size=5237B;;;0
1178	1	11	0	1	4	0	1	2013-08-04 10:09:19-04	234863	2013-08-04 10:09:19-04	253924	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.019060000000000001	0.23400000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.007828s;;;0.000000;10.000000
1179	1	13	0	1	4	0	1	2013-08-04 10:09:19-04	238545	2013-08-04 10:09:19-04	262406	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023859999999999999	0.23799999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
1180	1	9	0	1	4	0	1	2013-08-04 10:09:19-04	241833	2013-08-04 10:09:23-04	257915	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0160799999999997	0.24099999999999999	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.040000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1181	1	10	0	1	4	0	1	2013-08-04 10:14:19-04	56870	2013-08-04 10:14:19-04	68416	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01155	0.056000000000000001	0	DISK OK - free space: / 14181 MB (84% inode=90%):		/=2628MB;14167;15938;0;17709
1182	1	6	0	1	4	0	1	2013-08-04 10:14:19-04	61279	2013-08-04 10:14:19-04	71499	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01022	0.060999999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1183	1	4	0	1	4	0	1	2013-08-04 10:14:19-04	63268	2013-08-04 10:14:19-04	77771	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.014500000000000001	0.063	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1184	1	12	0	1	4	0	1	2013-08-04 10:14:19-04	67119	2013-08-04 10:14:19-04	79565	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.012449999999999999	0.067000000000000004	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1185	1	8	0	4	4	2	1	2013-08-04 10:14:19-04	70324	2013-08-04 10:14:19-04	87979	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.017659999999999999	0.070000000000000007	127	The command defined for service Icinga Startup Delay does not exist\n		
1186	1	7	0	4	4	1	1	2013-08-04 10:14:19-04	75587	2013-08-04 10:14:19-04	93434	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.017850000000000001	0.074999999999999997	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.007 second response time		time=0.006574s;;;0.000000 size=5237B;;;0
1187	1	11	0	1	4	0	1	2013-08-04 10:14:19-04	78486	2013-08-04 10:14:19-04	108992	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.030509999999999999	0.078	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.017611s;;;0.000000;10.000000
1188	1	13	0	1	4	0	1	2013-08-04 10:14:19-04	83926	2013-08-04 10:14:19-04	120952	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.03703	0.083000000000000004	0	PROCS OK: 100 processes with STATE = RSZDT		
1189	1	9	0	1	4	0	1	2013-08-04 10:14:19-04	88813	2013-08-04 10:14:23-04	110736	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0219199999999997	0.087999999999999995	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.037000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1190	1	10	0	1	4	0	1	2013-08-04 10:19:19-04	234714	2013-08-04 10:19:19-04	245956	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01124	0.23400000000000001	0	DISK OK - free space: / 14181 MB (84% inode=90%):		/=2628MB;14167;15938;0;17709
1191	1	6	0	1	4	0	1	2013-08-04 10:19:19-04	238939	2013-08-04 10:19:19-04	249235	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0103	0.23799999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1192	1	4	0	1	4	0	1	2013-08-04 10:19:19-04	241458	2013-08-04 10:19:19-04	252676	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011220000000000001	0.24099999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1193	1	12	0	1	4	0	1	2013-08-04 10:19:19-04	244906	2013-08-04 10:19:19-04	255647	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01074	0.24399999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1194	1	8	0	4	4	2	1	2013-08-04 10:19:19-04	248150	2013-08-04 10:19:19-04	264666	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01652	0.248	127	The command defined for service Icinga Startup Delay does not exist\n		
1195	1	7	0	4	4	1	1	2013-08-04 10:19:19-04	253505	2013-08-04 10:19:19-04	268181	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01468	0.253	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003340s;;;0.000000 size=5237B;;;0
1196	1	11	0	1	4	0	1	2013-08-04 10:19:19-04	256723	2013-08-04 10:19:19-04	277559	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.020840000000000001	0.25600000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010456s;;;0.000000;10.000000
1197	1	13	0	1	4	0	1	2013-08-04 10:19:19-04	258608	2013-08-04 10:19:19-04	282016	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02341	0.25800000000000001	0	PROCS OK: 103 processes with STATE = RSZDT		
1198	1	9	0	1	4	0	1	2013-08-04 10:19:19-04	261673	2013-08-04 10:19:23-04	278958	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01729	0.26100000000000001	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.040000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1199	1	10	0	1	4	0	1	2013-08-04 10:24:19-04	198628	2013-08-04 10:24:19-04	209042	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010410000000000001	0.19800000000000001	0	DISK OK - free space: / 14180 MB (84% inode=90%):		/=2629MB;14167;15938;0;17709
1200	1	6	0	1	4	0	1	2013-08-04 10:24:19-04	202901	2013-08-04 10:24:19-04	213057	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010160000000000001	0.20200000000000001	0	OK - load average: 0.08, 0.04, 0.01		load1=0.080;5.000;10.000;0; load5=0.040;4.000;6.000;0; load15=0.010;3.000;4.000;0;
1201	1	4	0	1	4	0	1	2013-08-04 10:24:19-04	203850	2013-08-04 10:24:19-04	216365	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01252	0.20300000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1202	1	12	0	1	4	0	1	2013-08-04 10:24:19-04	208002	2013-08-04 10:24:19-04	221587	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01359	0.20699999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1203	1	8	0	4	4	2	1	2013-08-04 10:24:19-04	211591	2013-08-04 10:24:19-04	226806	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01521	0.21099999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
1204	1	7	0	4	4	1	1	2013-08-04 10:24:19-04	217331	2013-08-04 10:24:19-04	232800	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015469999999999999	0.217	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.006 second response time		time=0.006060s;;;0.000000 size=5237B;;;0
1205	1	11	0	1	4	0	1	2013-08-04 10:24:19-04	219319	2013-08-04 10:24:19-04	241940	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022620000000000001	0.219	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.012105s;;;0.000000;10.000000
1206	1	13	0	1	4	0	1	2013-08-04 10:24:19-04	223745	2013-08-04 10:24:19-04	249056	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.025309999999999999	0.223	0	PROCS OK: 100 processes with STATE = RSZDT		
1207	1	9	0	1	4	0	1	2013-08-04 10:24:19-04	227587	2013-08-04 10:24:23-04	245148	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0175599999999996	0.22700000000000001	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1208	1	10	0	1	4	0	1	2013-08-04 10:29:19-04	130618	2013-08-04 10:29:19-04	141931	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.011310000000000001	0.13	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1209	1	6	0	1	4	0	1	2013-08-04 10:29:19-04	135168	2013-08-04 10:29:19-04	145180	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01001	0.13500000000000001	0	OK - load average: 0.00, 0.02, 0.00		load1=0.000;5.000;10.000;0; load5=0.020;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1210	1	4	0	1	4	0	1	2013-08-04 10:29:19-04	137149	2013-08-04 10:29:19-04	146596	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0094500000000000001	0.13700000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1211	1	12	0	1	4	0	1	2013-08-04 10:29:19-04	140646	2013-08-04 10:29:19-04	152242	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.011599999999999999	0.14000000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1212	1	8	0	4	4	2	1	2013-08-04 10:29:19-04	144217	2013-08-04 10:29:19-04	155925	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01171	0.14399999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
1213	1	7	0	4	4	1	1	2013-08-04 10:29:19-04	147869	2013-08-04 10:29:19-04	163974	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.016109999999999999	0.14699999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003871s;;;0.000000 size=5237B;;;0
1214	1	11	0	1	4	0	1	2013-08-04 10:29:19-04	149135	2013-08-04 10:29:19-04	173942	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.024809999999999999	0.14899999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011990s;;;0.000000;10.000000
1215	1	13	0	1	4	0	1	2013-08-04 10:29:19-04	153149	2013-08-04 10:29:19-04	180352	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.027199999999999998	0.153	0	PROCS OK: 100 processes with STATE = RSZDT		
1216	1	9	0	1	4	0	1	2013-08-04 10:29:19-04	158073	2013-08-04 10:29:23-04	173285	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0152099999999997	0.158	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.048000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1217	1	10	0	1	4	0	1	2013-08-04 10:34:19-04	99965	2013-08-04 10:34:19-04	110780	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01081	0.099000000000000005	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1218	1	6	0	1	4	0	1	2013-08-04 10:34:19-04	103854	2013-08-04 10:34:19-04	114200	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01035	0.10299999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1219	1	4	0	1	4	0	1	2013-08-04 10:34:19-04	105861	2013-08-04 10:34:19-04	115423	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0095600000000000008	0.105	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1220	1	12	0	1	4	0	1	2013-08-04 10:34:19-04	109377	2013-08-04 10:34:19-04	121931	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01255	0.109	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1221	1	8	0	4	4	2	1	2013-08-04 10:34:19-04	113099	2013-08-04 10:34:19-04	124512	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01141	0.113	127	The command defined for service Icinga Startup Delay does not exist\n		
1222	1	7	0	4	4	1	1	2013-08-04 10:34:19-04	116665	2013-08-04 10:34:19-04	132612	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015949999999999999	0.11600000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003983s;;;0.000000 size=5237B;;;0
1223	1	11	0	1	4	0	1	2013-08-04 10:34:19-04	118083	2013-08-04 10:34:19-04	139691	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.021610000000000001	0.11799999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.008653s;;;0.000000;10.000000
1224	1	13	0	1	4	0	1	2013-08-04 10:34:19-04	122651	2013-08-04 10:34:19-04	148026	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02538	0.122	0	PROCS OK: 100 processes with STATE = RSZDT		
1225	1	9	0	1	4	0	1	2013-08-04 10:34:19-04	126345	2013-08-04 10:34:23-04	144446	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0180999999999996	0.126	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.045000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1226	1	10	0	1	4	0	1	2013-08-04 10:39:19-04	73790	2013-08-04 10:39:19-04	84306	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01052	0.072999999999999995	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1227	1	6	0	1	4	0	1	2013-08-04 10:39:19-04	77188	2013-08-04 10:39:19-04	87725	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010540000000000001	0.076999999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1228	1	4	0	1	4	0	1	2013-08-04 10:39:19-04	79455	2013-08-04 10:39:19-04	88968	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0095099999999999994	0.079000000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1229	1	12	0	1	4	0	1	2013-08-04 10:39:19-04	83016	2013-08-04 10:39:19-04	95196	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01218	0.082000000000000003	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1230	1	8	0	4	4	2	1	2013-08-04 10:39:19-04	85349	2013-08-04 10:39:19-04	97603	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01225	0.085000000000000006	127	The command defined for service Icinga Startup Delay does not exist\n		
1231	1	7	0	4	4	1	1	2013-08-04 10:39:19-04	89879	2013-08-04 10:39:19-04	106083	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.016199999999999999	0.088999999999999996	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003817s;;;0.000000 size=5237B;;;0
1232	1	11	0	1	4	0	1	2013-08-04 10:39:19-04	91261	2013-08-04 10:39:19-04	119039	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.027779999999999999	0.090999999999999998	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.016071s;;;0.000000;10.000000
1233	1	13	0	1	4	0	1	2013-08-04 10:39:19-04	95907	2013-08-04 10:39:19-04	122878	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.026970000000000001	0.095000000000000001	0	PROCS OK: 100 processes with STATE = RSZDT		
1234	1	9	0	1	4	0	1	2013-08-04 10:39:19-04	100287	2013-08-04 10:42:53-04	725268	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	214.62497999999999	0.10000000000000001	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1235	1	10	0	1	4	0	1	2013-08-04 10:44:19-04	228907	2013-08-04 10:44:19-04	238377	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0094699999999999993	0.22800000000000001	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1236	1	6	0	1	4	0	1	2013-08-04 10:44:19-04	231871	2013-08-04 10:44:19-04	241977	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010109999999999999	0.23100000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1237	1	4	0	1	4	0	1	2013-08-04 10:44:19-04	233330	2013-08-04 10:44:19-04	244686	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01136	0.23300000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1238	1	12	0	1	4	0	1	2013-08-04 10:44:19-04	235346	2013-08-04 10:44:19-04	247758	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.012409999999999999	0.23499999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1239	1	8	0	4	4	2	1	2013-08-04 10:44:19-04	239294	2013-08-04 10:44:19-04	251203	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01191	0.23899999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
1240	1	7	0	4	4	1	1	2013-08-04 10:44:19-04	243482	2013-08-04 10:44:19-04	257868	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01439	0.24299999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002855s;;;0.000000 size=5237B;;;0
1241	1	11	0	1	4	0	1	2013-08-04 10:44:19-04	245899	2013-08-04 10:44:19-04	265781	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.019879999999999998	0.245	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009356s;;;0.000000;10.000000
1242	1	13	0	1	4	0	1	2013-08-04 10:44:19-04	248371	2013-08-04 10:44:19-04	272590	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024219999999999998	0.248	0	PROCS OK: 103 processes with STATE = RSZDT		
1243	1	9	0	1	4	0	1	2013-08-04 10:44:19-04	251824	2013-08-04 10:44:23-04	265587	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0137600000000004	0.251	0	PING OK - Packet loss = 0%, RTA = 0.74 ms		rta=0.744000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1244	1	10	0	1	4	0	1	2013-08-04 10:49:19-04	176101	2013-08-04 10:49:19-04	188718	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.012619999999999999	0.17599999999999999	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1245	1	6	0	1	4	0	1	2013-08-04 10:49:19-04	180608	2013-08-04 10:49:19-04	189998	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0093900000000000008	0.17999999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1246	1	4	0	1	4	0	1	2013-08-04 10:49:19-04	182531	2013-08-04 10:49:19-04	193019	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.010489999999999999	0.182	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1247	1	12	0	1	4	0	1	2013-08-04 10:49:19-04	183313	2013-08-04 10:49:19-04	196057	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01274	0.183	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1248	1	8	0	4	4	2	1	2013-08-04 10:49:19-04	186596	2013-08-04 10:49:19-04	202960	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01636	0.186	127	The command defined for service Icinga Startup Delay does not exist\n		
1249	1	7	0	4	4	1	1	2013-08-04 10:49:19-04	190890	2013-08-04 10:49:19-04	206018	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015129999999999999	0.19	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000514s;;;0.000000 size=5237B;;;0
1250	1	11	0	1	4	0	1	2013-08-04 10:49:19-04	193764	2013-08-04 10:49:19-04	218034	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02427	0.193	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.013020s;;;0.000000;10.000000
1251	1	13	0	1	4	0	1	2013-08-04 10:49:19-04	196720	2013-08-04 10:49:19-04	220077	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023359999999999999	0.19600000000000001	0	PROCS OK: 101 processes with STATE = RSZDT		
1252	1	9	0	1	4	0	1	2013-08-04 10:49:19-04	199950	2013-08-04 10:49:23-04	216377	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0164299999999997	0.19900000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.047000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1253	1	10	0	1	4	0	1	2013-08-04 10:54:19-04	118697	2013-08-04 10:54:19-04	130283	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01159	0.11799999999999999	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1254	1	6	0	1	4	0	1	2013-08-04 10:54:19-04	122878	2013-08-04 10:54:19-04	132218	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0093399999999999993	0.122	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1255	1	4	0	1	4	0	1	2013-08-04 10:54:19-04	124759	2013-08-04 10:54:19-04	134117	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0093600000000000003	0.124	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1256	1	12	0	1	4	0	1	2013-08-04 10:54:19-04	127405	2013-08-04 10:54:19-04	139475	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.012070000000000001	0.127	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1257	1	8	0	4	4	2	1	2013-08-04 10:54:19-04	131264	2013-08-04 10:54:19-04	146824	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015559999999999999	0.13100000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1258	1	7	0	4	4	1	1	2013-08-04 10:54:19-04	135004	2013-08-04 10:54:19-04	149683	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01468	0.13400000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003113s;;;0.000000 size=5237B;;;0
1259	1	11	0	1	4	0	1	2013-08-04 10:54:19-04	136518	2013-08-04 10:54:19-04	159140	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022620000000000001	0.13600000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010378s;;;0.000000;10.000000
1260	1	13	0	1	4	0	1	2013-08-04 10:54:19-04	140325	2013-08-04 10:54:19-04	162784	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.022460000000000001	0.14000000000000001	0	PROCS OK: 101 processes with STATE = RSZDT		
1261	1	9	0	1	4	0	1	2013-08-04 10:54:19-04	143692	2013-08-04 10:54:23-04	158262	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01457	0.14299999999999999	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.047000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1262	1	6	0	1	4	0	1	2013-08-04 10:59:19-04	73865	2013-08-04 10:59:19-04	82577	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0087100000000000007	0.072999999999999995	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1263	1	10	0	1	4	0	1	2013-08-04 10:59:19-04	69911	2013-08-04 10:59:19-04	83121	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01321	0.069000000000000006	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1264	1	4	0	1	4	0	1	2013-08-04 10:59:19-04	75650	2013-08-04 10:59:19-04	86087	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01044	0.074999999999999997	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1265	1	12	0	1	4	0	1	2013-08-04 10:59:19-04	78114	2013-08-04 10:59:19-04	88880	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01077	0.078	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1266	1	8	0	4	4	2	1	2013-08-04 10:59:19-04	80672	2013-08-04 10:59:19-04	95628	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.014959999999999999	0.080000000000000002	127	The command defined for service Icinga Startup Delay does not exist\n		
1267	1	7	0	4	4	1	1	2013-08-04 10:59:19-04	83925	2013-08-04 10:59:19-04	98712	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.014789999999999999	0.083000000000000004	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002929s;;;0.000000 size=5237B;;;0
1268	1	11	0	1	4	0	1	2013-08-04 10:59:19-04	87526	2013-08-04 10:59:19-04	108305	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02078	0.086999999999999994	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010516s;;;0.000000;10.000000
1269	1	13	0	1	4	0	1	2013-08-04 10:59:19-04	89862	2013-08-04 10:59:19-04	112744	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.022880000000000001	0.088999999999999996	0	PROCS OK: 101 processes with STATE = RSZDT		
1270	1	9	0	1	4	0	1	2013-08-04 10:59:19-04	92860	2013-08-04 10:59:23-04	108958	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0160999999999998	0.091999999999999998	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.040000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1271	1	6	0	1	4	0	1	2013-08-04 11:04:19-04	35467	2013-08-04 11:04:19-04	44964	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0094999999999999998	0.035000000000000003	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1272	1	10	0	1	4	0	1	2013-08-04 11:04:19-04	38342	2013-08-04 11:04:19-04	47964	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0096200000000000001	0.037999999999999999	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1273	1	4	0	1	4	0	1	2013-08-04 11:04:19-04	40160	2013-08-04 11:04:19-04	50656	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.010500000000000001	0.040000000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1274	1	12	0	1	4	0	1	2013-08-04 11:04:19-04	42708	2013-08-04 11:04:19-04	54135	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.011429999999999999	0.042000000000000003	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1275	1	8	0	4	4	2	1	2013-08-04 11:04:19-04	45718	2013-08-04 11:04:19-04	57970	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01225	0.044999999999999998	127	The command defined for service Icinga Startup Delay does not exist\n		
1276	1	7	0	4	4	1	1	2013-08-04 11:04:19-04	48655	2013-08-04 11:04:19-04	64456	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015800000000000002	0.048000000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.004458s;;;0.000000 size=5237B;;;0
1277	1	11	0	1	4	0	1	2013-08-04 11:04:19-04	51638	2013-08-04 11:04:19-04	73281	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02164	0.050999999999999997	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009956s;;;0.000000;10.000000
1278	1	13	0	1	4	0	1	2013-08-04 11:04:19-04	54842	2013-08-04 11:04:19-04	79199	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02436	0.053999999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
1279	1	9	0	1	4	0	1	2013-08-04 11:04:19-04	60104	2013-08-04 11:04:23-04	74253	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0141499999999999	0.059999999999999998	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.044000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1280	1	10	0	1	4	0	1	2013-08-04 11:09:19-04	194429	2013-08-04 11:09:19-04	202933	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0085000000000000006	0.19400000000000001	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1281	1	6	0	1	4	0	1	2013-08-04 11:09:19-04	189945	2013-08-04 11:09:19-04	204175	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01423	0.189	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1282	1	4	0	1	4	0	1	2013-08-04 11:09:19-04	196612	2013-08-04 11:09:19-04	207717	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01111	0.19600000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1283	1	12	0	1	4	0	1	2013-08-04 11:09:19-04	198614	2013-08-04 11:09:19-04	210801	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.012189999999999999	0.19800000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1284	1	8	0	4	4	2	1	2013-08-04 11:09:19-04	200991	2013-08-04 11:09:19-04	218421	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.017430000000000001	0.20000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1285	1	7	0	4	4	1	1	2013-08-04 11:09:19-04	205057	2013-08-04 11:09:19-04	221660	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.0166	0.20499999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003387s;;;0.000000 size=5237B;;;0
1286	1	11	0	1	4	0	1	2013-08-04 11:09:19-04	208528	2013-08-04 11:09:19-04	229691	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.021160000000000002	0.20799999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.008992s;;;0.000000;10.000000
1287	1	13	0	1	4	0	1	2013-08-04 11:09:19-04	211676	2013-08-04 11:09:19-04	235464	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023789999999999999	0.21099999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
1288	1	9	0	1	4	0	1	2013-08-04 11:09:19-04	214931	2013-08-04 11:09:23-04	231955	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0170199999999996	0.214	0	PING OK - Packet loss = 0%, RTA = 0.03 ms		rta=0.033000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1289	1	10	0	1	4	0	1	2013-08-04 11:14:19-04	12043	2013-08-04 11:14:19-04	23340	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.011299999999999999	0.012	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1290	1	6	0	1	4	0	1	2013-08-04 11:14:19-04	14880	2013-08-04 11:14:19-04	24617	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0097400000000000004	0.014	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1291	1	4	0	1	4	0	1	2013-08-04 11:14:19-04	16808	2013-08-04 11:14:19-04	27964	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01116	0.016	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1292	1	12	0	1	4	0	1	2013-08-04 11:14:19-04	17855	2013-08-04 11:14:19-04	31417	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.013559999999999999	0.017000000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1293	1	8	0	4	4	2	1	2013-08-04 11:14:19-04	21197	2013-08-04 11:14:19-04	39209	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.018010000000000002	0.021000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1294	1	7	0	4	4	1	1	2013-08-04 11:14:19-04	25661	2013-08-04 11:14:19-04	42292	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.016629999999999999	0.025000000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003054s;;;0.000000 size=5237B;;;0
1295	1	11	0	1	4	0	1	2013-08-04 11:14:19-04	29619	2013-08-04 11:14:19-04	53687	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.024070000000000001	0.029000000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.012461s;;;0.000000;10.000000
1296	1	13	0	1	4	0	1	2013-08-04 11:14:19-04	32397	2013-08-04 11:14:19-04	55141	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02274	0.032000000000000001	0	PROCS OK: 101 processes with STATE = RSZDT		
1297	1	9	0	1	4	0	1	2013-08-04 11:14:19-04	36063	2013-08-04 11:14:23-04	53330	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0172699999999999	0.035999999999999997	0	PING OK - Packet loss = 0%, RTA = 0.03 ms		rta=0.032000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1298	1	10	0	1	4	0	1	2013-08-04 11:19:19-04	226062	2013-08-04 11:19:19-04	238595	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.012529999999999999	0.22500000000000001	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1299	1	6	0	1	4	0	1	2013-08-04 11:19:19-04	230581	2013-08-04 11:19:19-04	240520	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0099399999999999992	0.23000000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1300	1	4	0	1	4	0	1	2013-08-04 11:19:19-04	232865	2013-08-04 11:19:19-04	244375	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011509999999999999	0.23200000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1301	1	12	0	1	4	0	1	2013-08-04 11:19:19-04	235299	2013-08-04 11:19:19-04	245490	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.010189999999999999	0.23499999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1302	1	8	0	4	4	2	1	2013-08-04 11:19:19-04	239592	2013-08-04 11:19:19-04	254369	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01478	0.23899999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
1303	1	7	0	4	4	1	1	2013-08-04 11:19:19-04	242195	2013-08-04 11:19:19-04	257388	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01519	0.24199999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002921s;;;0.000000 size=5237B;;;0
1304	1	11	0	1	4	0	1	2013-08-04 11:19:19-04	246295	2013-08-04 11:19:19-04	262397	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.0161	0.246	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.005900s;;;0.000000;10.000000
1305	1	13	0	1	4	0	1	2013-08-04 11:19:19-04	248278	2013-08-04 11:19:19-04	271015	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02274	0.248	0	PROCS OK: 100 processes with STATE = RSZDT		
1306	1	9	0	1	4	0	1	2013-08-04 11:19:19-04	251538	2013-08-04 11:19:23-04	266654	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0151199999999996	0.251	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.048000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1307	1	10	0	1	4	0	1	2013-08-04 11:24:19-04	194178	2013-08-04 11:24:19-04	206758	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.012579999999999999	0.19400000000000001	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1308	1	6	0	1	4	0	1	2013-08-04 11:24:19-04	197941	2013-08-04 11:24:19-04	207941	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01	0.19700000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1309	1	4	0	1	4	0	1	2013-08-04 11:24:19-04	199972	2013-08-04 11:24:19-04	211013	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011039999999999999	0.19900000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1310	1	12	0	1	4	0	1	2013-08-04 11:24:19-04	202321	2013-08-04 11:24:19-04	213748	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.011429999999999999	0.20200000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1311	1	8	0	4	4	2	1	2013-08-04 11:24:19-04	205686	2013-08-04 11:24:19-04	221662	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015980000000000001	0.20499999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
1312	1	7	0	4	4	1	1	2013-08-04 11:24:19-04	209762	2013-08-04 11:24:19-04	224577	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01482	0.20899999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002802s;;;0.000000 size=5237B;;;0
1313	1	11	0	1	4	0	1	2013-08-04 11:24:19-04	212736	2013-08-04 11:24:19-04	233021	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.020289999999999999	0.21199999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009367s;;;0.000000;10.000000
1314	1	13	0	1	4	0	1	2013-08-04 11:24:19-04	215504	2013-08-04 11:24:19-04	237713	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.022210000000000001	0.215	0	PROCS OK: 100 processes with STATE = RSZDT		
1315	1	9	0	1	4	0	1	2013-08-04 11:24:19-04	218816	2013-08-04 11:24:23-04	234905	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0160900000000002	0.218	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.050000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1316	1	10	0	1	4	0	1	2013-08-04 11:29:19-04	165957	2013-08-04 11:29:19-04	177217	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.011259999999999999	0.16500000000000001	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1317	1	6	0	1	4	0	1	2013-08-04 11:29:19-04	170502	2013-08-04 11:29:19-04	180315	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0098099999999999993	0.17000000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1318	1	4	0	1	4	0	1	2013-08-04 11:29:19-04	172905	2013-08-04 11:29:19-04	183250	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01035	0.17199999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1319	1	12	0	1	4	0	1	2013-08-04 11:29:19-04	175114	2013-08-04 11:29:19-04	186385	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.011270000000000001	0.17499999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1320	1	8	0	4	4	2	1	2013-08-04 11:29:19-04	178205	2013-08-04 11:29:19-04	190075	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01187	0.17799999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
1321	1	7	0	4	4	1	1	2013-08-04 11:29:19-04	181705	2013-08-04 11:29:19-04	196860	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01516	0.18099999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002681s;;;0.000000 size=5237B;;;0
1322	1	11	0	1	4	0	1	2013-08-04 11:29:19-04	184012	2013-08-04 11:29:19-04	203508	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.0195	0.183	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.007912s;;;0.000000;10.000000
1323	1	13	0	1	4	0	1	2013-08-04 11:29:19-04	187028	2013-08-04 11:29:19-04	211249	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024219999999999998	0.187	0	PROCS OK: 100 processes with STATE = RSZDT		
1324	1	9	0	1	4	0	1	2013-08-04 11:29:19-04	190783	2013-08-04 11:29:23-04	206419	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0156400000000003	0.19	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.048000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1325	1	10	0	1	4	0	1	2013-08-04 11:34:19-04	113156	2013-08-04 11:34:19-04	125864	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.012710000000000001	0.113	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1326	1	6	0	1	4	0	1	2013-08-04 11:34:19-04	115738	2013-08-04 11:34:19-04	127017	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01128	0.115	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1327	1	4	0	1	4	0	1	2013-08-04 11:34:19-04	119695	2013-08-04 11:34:19-04	130477	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01078	0.11899999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1328	1	12	0	1	4	0	1	2013-08-04 11:34:19-04	121095	2013-08-04 11:34:19-04	133567	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01247	0.121	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1329	1	8	0	4	4	2	1	2013-08-04 11:34:19-04	123867	2013-08-04 11:34:19-04	139647	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015779999999999999	0.123	127	The command defined for service Icinga Startup Delay does not exist\n		
1330	1	7	0	4	4	1	1	2013-08-04 11:34:19-04	128145	2013-08-04 11:34:19-04	144019	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015869999999999999	0.128	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002593s;;;0.000000 size=5237B;;;0
1331	1	11	0	1	4	0	1	2013-08-04 11:34:19-04	131226	2013-08-04 11:34:19-04	153492	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022270000000000002	0.13100000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010437s;;;0.000000;10.000000
1332	1	13	0	1	4	0	1	2013-08-04 11:34:19-04	134298	2013-08-04 11:34:19-04	157792	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02349	0.13400000000000001	0	PROCS OK: 101 processes with STATE = RSZDT		
1333	1	9	0	1	4	0	1	2013-08-04 11:34:19-04	137764	2013-08-04 11:34:23-04	153687	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0159200000000004	0.13700000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.045000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1334	1	6	0	1	4	0	1	2013-08-04 11:39:19-04	48629	2013-08-04 11:39:19-04	55808	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0071799999999999998	0.048000000000000001	0	OK - load average: 0.04, 0.05, 0.01		load1=0.040;5.000;10.000;0; load5=0.050;4.000;6.000;0; load15=0.010;3.000;4.000;0;
1335	1	10	0	1	4	0	1	2013-08-04 11:39:19-04	44376	2013-08-04 11:39:19-04	58792	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.014420000000000001	0.043999999999999997	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1336	1	4	0	1	4	0	1	2013-08-04 11:39:19-04	50433	2013-08-04 11:39:19-04	61793	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01136	0.050000000000000003	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1337	1	12	0	1	4	0	1	2013-08-04 11:39:19-04	53219	2013-08-04 11:39:19-04	64960	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01174	0.052999999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1338	1	8	0	4	4	2	1	2013-08-04 11:39:19-04	56614	2013-08-04 11:39:19-04	68913	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.0123	0.056000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1339	1	7	0	4	4	1	1	2013-08-04 11:39:19-04	60278	2013-08-04 11:39:19-04	75605	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01533	0.059999999999999998	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002826s;;;0.000000 size=5237B;;;0
1340	1	11	0	1	4	0	1	2013-08-04 11:39:19-04	63019	2013-08-04 11:39:19-04	81900	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.018880000000000001	0.062	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.007525s;;;0.000000;10.000000
1341	1	13	0	1	4	0	1	2013-08-04 11:39:19-04	65830	2013-08-04 11:39:19-04	89741	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023910000000000001	0.065000000000000002	0	PROCS OK: 100 processes with STATE = RSZDT		
1342	1	9	0	1	4	0	1	2013-08-04 11:39:19-04	69596	2013-08-04 11:39:23-04	84081	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0144799999999998	0.069000000000000006	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.036000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1343	1	6	0	1	4	0	1	2013-08-04 11:44:19-04	239047	2013-08-04 11:44:19-04	250684	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.011639999999999999	0.23799999999999999	0	OK - load average: 0.22, 0.07, 0.02		load1=0.220;5.000;10.000;0; load5=0.070;4.000;6.000;0; load15=0.020;3.000;4.000;0;
1344	1	10	0	1	4	0	1	2013-08-04 11:44:19-04	243108	2013-08-04 11:44:19-04	253631	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01052	0.24299999999999999	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1345	1	4	0	1	4	0	1	2013-08-04 11:44:19-04	245015	2013-08-04 11:44:19-04	254649	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0096299999999999997	0.24399999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1346	1	12	0	1	4	0	1	2013-08-04 11:44:19-04	247298	2013-08-04 11:44:19-04	259242	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.011939999999999999	0.247	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1347	1	8	0	4	4	2	1	2013-08-04 11:44:19-04	251448	2013-08-04 11:44:19-04	266550	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015100000000000001	0.251	127	The command defined for service Icinga Startup Delay does not exist\n		
1348	1	7	0	4	4	1	1	2013-08-04 11:44:19-04	255543	2013-08-04 11:44:19-04	269715	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01417	0.255	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002965s;;;0.000000 size=5237B;;;0
1349	1	11	0	1	4	0	1	2013-08-04 11:44:19-04	257328	2013-08-04 11:44:19-04	278748	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.021420000000000002	0.25700000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010044s;;;0.000000;10.000000
1350	1	13	0	1	4	0	1	2013-08-04 11:44:19-04	260164	2013-08-04 11:44:19-04	283023	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.022859999999999998	0.26000000000000001	0	PROCS OK: 100 processes with STATE = RSZDT		
1351	1	9	0	1	4	0	1	2013-08-04 11:44:19-04	263603	2013-08-04 11:44:23-04	280259	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0166599999999999	0.26300000000000001	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.041000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1352	1	6	0	1	4	0	1	2013-08-04 11:49:19-04	167294	2013-08-04 11:49:19-04	180436	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.013140000000000001	0.16700000000000001	0	OK - load average: 0.02, 0.05, 0.00		load1=0.020;5.000;10.000;0; load5=0.050;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1353	1	10	0	1	4	0	1	2013-08-04 11:49:19-04	171846	2013-08-04 11:49:19-04	181494	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0096500000000000006	0.17100000000000001	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1354	1	4	0	1	4	0	1	2013-08-04 11:49:19-04	173798	2013-08-04 11:49:19-04	183813	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.010019999999999999	0.17299999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1355	1	12	0	1	4	0	1	2013-08-04 11:49:19-04	175876	2013-08-04 11:49:19-04	187078	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0112	0.17499999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1356	1	8	0	4	4	2	1	2013-08-04 11:49:19-04	179352	2013-08-04 11:49:19-04	192570	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.013220000000000001	0.17899999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
1357	1	7	0	4	4	1	1	2013-08-04 11:49:19-04	184737	2013-08-04 11:49:19-04	199300	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01456	0.184	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002562s;;;0.000000 size=5237B;;;0
1358	1	11	0	1	4	0	1	2013-08-04 11:49:19-04	187844	2013-08-04 11:49:19-04	208083	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.020240000000000001	0.187	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009947s;;;0.000000;10.000000
1359	1	13	0	1	4	0	1	2013-08-04 11:49:19-04	189810	2013-08-04 11:49:19-04	212987	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023179999999999999	0.189	0	PROCS OK: 100 processes with STATE = RSZDT		
1360	1	9	0	1	4	0	1	2013-08-04 11:49:19-04	193412	2013-08-04 11:49:23-04	209050	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0156400000000003	0.193	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.041000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1361	1	10	0	1	4	0	1	2013-08-04 12:19:40-04	126202	2013-08-04 12:19:40-04	134187	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0079900000000000006	0.126	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1362	1	6	0	1	4	0	1	2013-08-04 12:19:40-04	121911	2013-08-04 12:19:40-04	135410	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0135	0.121	0	OK - load average: 0.00, 0.01, 0.00		load1=0.000;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1363	1	4	0	1	4	0	1	2013-08-04 12:19:40-04	128073	2013-08-04 12:19:40-04	138500	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01043	0.128	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1364	1	12	0	1	4	0	1	2013-08-04 12:19:40-04	129095	2013-08-04 12:19:40-04	141521	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01243	0.129	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1365	1	8	0	4	4	2	1	2013-08-04 12:19:40-04	132297	2013-08-04 12:19:40-04	145002	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.012699999999999999	0.13200000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1366	1	7	0	4	4	1	1	2013-08-04 12:19:40-04	136315	2013-08-04 12:19:40-04	152088	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015769999999999999	0.13600000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003241s;;;0.000000 size=5237B;;;0
1367	1	11	0	1	4	0	1	2013-08-04 12:19:40-04	139181	2013-08-04 12:19:40-04	158164	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.01898	0.13900000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.008103s;;;0.000000;10.000000
1368	1	13	0	1	4	0	1	2013-08-04 12:19:40-04	142147	2013-08-04 12:19:40-04	166358	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024209999999999999	0.14199999999999999	0	PROCS OK: 100 processes with STATE = RSZDT		
1369	1	9	0	1	4	0	1	2013-08-04 12:19:40-04	145651	2013-08-04 12:19:44-04	160861	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0152099999999997	0.14499999999999999	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.037000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1370	1	10	0	1	4	0	1	2013-08-04 12:24:40-04	236972	2013-08-04 12:24:40-04	247986	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.011010000000000001	0.23599999999999999	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1371	1	6	0	1	4	0	1	2013-08-04 12:24:40-04	241310	2013-08-04 12:24:40-04	251114	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0097999999999999997	0.24099999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1372	1	4	0	1	4	0	1	2013-08-04 12:24:40-04	243338	2013-08-04 12:24:40-04	254825	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01149	0.24299999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1373	1	12	0	1	4	0	1	2013-08-04 12:24:40-04	246582	2013-08-04 12:24:40-04	257827	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01124	0.246	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1374	1	8	0	4	4	2	1	2013-08-04 12:24:40-04	249947	2013-08-04 12:24:40-04	264777	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.014829999999999999	0.249	127	The command defined for service Icinga Startup Delay does not exist\n		
1375	1	7	0	4	4	1	1	2013-08-04 12:24:40-04	252954	2013-08-04 12:24:40-04	268113	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01516	0.252	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.002 second response time		time=0.001589s;;;0.000000 size=5237B;;;0
1376	1	11	0	1	4	0	1	2013-08-04 12:24:40-04	255724	2013-08-04 12:24:40-04	278023	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.0223	0.255	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010879s;;;0.000000;10.000000
1377	1	13	0	1	4	0	1	2013-08-04 12:24:40-04	258793	2013-08-04 12:24:40-04	281894	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023099999999999999	0.25800000000000001	0	PROCS OK: 101 processes with STATE = RSZDT		
1378	1	9	0	1	4	0	1	2013-08-04 12:24:40-04	262045	2013-08-04 12:24:44-04	277129	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0150800000000002	0.26200000000000001	0	PING OK - Packet loss = 0%, RTA = 0.03 ms		rta=0.033000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1379	1	10	0	1	4	0	1	2013-08-04 12:29:40-04	69983	2013-08-04 12:29:40-04	81378	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.011390000000000001	0.069000000000000006	0	DISK OK - free space: / 14177 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1380	1	6	0	1	4	0	1	2013-08-04 12:29:40-04	74355	2013-08-04 12:29:40-04	84641	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010290000000000001	0.073999999999999996	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1381	1	4	0	1	4	0	1	2013-08-04 12:29:40-04	76785	2013-08-04 12:29:40-04	87971	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01119	0.075999999999999998	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1382	1	12	0	1	4	0	1	2013-08-04 12:29:40-04	79095	2013-08-04 12:29:40-04	92633	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01354	0.079000000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1383	1	8	0	4	4	2	1	2013-08-04 12:29:40-04	82174	2013-08-04 12:29:40-04	99983	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.017809999999999999	0.082000000000000003	127	The command defined for service Icinga Startup Delay does not exist\n		
1384	1	7	0	4	4	1	1	2013-08-04 12:29:40-04	85601	2013-08-04 12:29:40-04	103016	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.017409999999999998	0.085000000000000006	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.000 second response time		time=0.000490s;;;0.000000 size=5237B;;;0
1385	1	11	0	1	4	0	1	2013-08-04 12:29:40-04	88753	2013-08-04 12:29:40-04	111874	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.023120000000000002	0.087999999999999995	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009935s;;;0.000000;10.000000
1386	1	13	0	1	4	0	1	2013-08-04 12:29:40-04	93649	2013-08-04 12:29:40-04	117815	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024170000000000001	0.092999999999999999	0	PROCS OK: 100 processes with STATE = RSZDT		
1387	1	9	0	1	4	0	1	2013-08-04 12:29:40-04	97162	2013-08-04 12:29:44-04	116270	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0191100000000004	0.097000000000000003	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.037000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1388	1	10	0	1	4	0	1	2013-08-04 12:34:40-04	65437	2013-08-04 12:34:40-04	77003	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01157	0.065000000000000002	0	DISK OK - free space: / 14176 MB (84% inode=90%):		/=2632MB;14167;15938;0;17709
1389	1	6	0	1	4	0	1	2013-08-04 12:34:40-04	69811	2013-08-04 12:34:40-04	80541	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01073	0.069000000000000006	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1390	1	4	0	1	4	0	1	2013-08-04 12:34:40-04	72020	2013-08-04 12:34:40-04	83550	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01153	0.070999999999999994	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1391	1	12	0	1	4	0	1	2013-08-04 12:34:40-04	75139	2013-08-04 12:34:40-04	87034	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01189	0.074999999999999997	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1392	1	8	0	4	4	2	1	2013-08-04 12:34:40-04	79537	2013-08-04 12:34:40-04	96461	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.016920000000000001	0.079000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1393	1	7	0	4	4	1	1	2013-08-04 12:34:40-04	82137	2013-08-04 12:34:40-04	100618	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01848	0.082000000000000003	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.001141s;;;0.000000 size=5237B;;;0
1394	1	11	0	1	4	0	1	2013-08-04 12:34:40-04	85950	2013-08-04 12:34:40-04	117585	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.031640000000000001	0.085000000000000006	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.019001s;;;0.000000;10.000000
1395	1	13	0	1	4	0	1	2013-08-04 12:34:40-04	88904	2013-08-04 12:34:40-04	132190	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.043290000000000002	0.087999999999999995	0	PROCS OK: 97 processes with STATE = RSZDT		
1396	1	9	0	1	4	0	1	2013-08-04 12:34:40-04	93885	2013-08-04 12:34:44-04	115438	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0215500000000004	0.092999999999999999	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.044000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1397	1	10	0	1	4	0	1	2013-08-04 13:43:12-04	23642	2013-08-04 13:43:12-04	34405	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01076	0.023	0	DISK OK - free space: / 14176 MB (84% inode=90%):		/=2633MB;14167;15938;0;17709
1398	1	6	0	1	4	0	1	2013-08-04 13:43:12-04	27373	2013-08-04 13:43:12-04	38578	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0112	0.027	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1399	1	4	0	1	4	0	1	2013-08-04 13:43:12-04	29821	2013-08-04 13:43:12-04	41580	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01176	0.029000000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1400	1	12	0	1	4	0	1	2013-08-04 13:43:12-04	32171	2013-08-04 13:43:12-04	44749	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.012579999999999999	0.032000000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1401	1	8	0	4	4	2	1	2013-08-04 13:43:12-04	36028	2013-08-04 13:43:12-04	48567	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.012540000000000001	0.035000000000000003	127	The command defined for service Icinga Startup Delay does not exist\n		
1402	1	7	0	4	4	1	1	2013-08-04 13:43:12-04	39337	2013-08-04 13:43:12-04	55299	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015959999999999998	0.039	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000737s;;;0.000000 size=5237B;;;0
1403	1	11	0	1	4	0	1	2013-08-04 13:43:12-04	42360	2013-08-04 13:43:12-04	65234	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022870000000000001	0.042000000000000003	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011363s;;;0.000000;10.000000
1404	1	13	0	1	4	0	1	2013-08-04 13:43:12-04	45477	2013-08-04 13:43:12-04	94518	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.04904	0.044999999999999998	0	PROCS OK: 98 processes with STATE = RSZDT		
1405	1	9	0	1	4	0	1	2013-08-04 13:43:12-04	49363	2013-08-04 13:43:16-04	64963	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0156000000000001	0.049000000000000002	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.048000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
623	1	10	0	1	4	0	1	2013-08-03 16:05:14-04	101332	2013-08-03 16:05:14-04	112406	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01107	0.10100000000000001	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
624	1	6	0	1	4	0	1	2013-08-03 16:05:14-04	105543	2013-08-03 16:05:14-04	115667	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010120000000000001	0.105	0	OK - load average: 0.02, 0.04, 0.01		load1=0.020;5.000;10.000;0; load5=0.040;4.000;6.000;0; load15=0.010;3.000;4.000;0;
625	1	12	0	1	4	0	1	2013-08-03 16:05:14-04	106753	2013-08-03 16:05:14-04	119442	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01269	0.106	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
626	1	4	0	1	4	0	1	2013-08-03 16:05:14-04	111180	2013-08-03 16:05:14-04	122739	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011560000000000001	0.111	0	USERS OK - 1 users currently logged in		users=1;20;50;0
627	1	7	0	4	4	1	1	2013-08-03 16:05:14-04	114223	2013-08-03 16:05:14-04	131472	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.017250000000000001	0.114	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.005 second response time		time=0.005155s;;;0.000000 size=5237B;;;0
628	1	8	0	4	4	2	1	2013-08-03 16:05:14-04	118137	2013-08-03 16:05:14-04	133713	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01558	0.11799999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
629	1	11	0	1	4	0	1	2013-08-03 16:05:14-04	121368	2013-08-03 16:05:14-04	142672	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.021299999999999999	0.121	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009115s;;;0.000000;10.000000
630	1	13	0	1	4	0	1	2013-08-03 16:05:14-04	124316	2013-08-03 16:05:14-04	148154	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02384	0.124	0	PROCS OK: 103 processes with STATE = RSZDT		
631	1	9	0	1	4	0	1	2013-08-03 16:05:14-04	127815	2013-08-03 16:05:18-04	143753	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0159399999999996	0.127	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
632	1	6	0	1	4	0	1	2013-08-03 16:10:14-04	208393	2013-08-03 16:10:14-04	217153	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0087600000000000004	0.20799999999999999	0	OK - load average: 0.03, 0.05, 0.00		load1=0.030;5.000;10.000;0; load5=0.050;4.000;6.000;0; load15=0.000;3.000;4.000;0;
633	1	10	0	1	4	0	1	2013-08-03 16:10:14-04	205662	2013-08-03 16:10:14-04	218344	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01268	0.20499999999999999	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
634	1	12	0	1	4	0	1	2013-08-03 16:10:14-04	210278	2013-08-03 16:10:14-04	221827	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01155	0.20999999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
635	1	4	0	1	4	0	1	2013-08-03 16:10:14-04	211245	2013-08-03 16:10:14-04	227441	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.016199999999999999	0.21099999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
636	1	7	0	4	4	1	1	2013-08-03 16:10:14-04	214763	2013-08-03 16:10:14-04	234475	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.019709999999999998	0.214	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000691s;;;0.000000 size=5237B;;;0
637	1	8	0	4	4	2	1	2013-08-03 16:10:14-04	219427	2013-08-03 16:10:14-04	236785	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01736	0.219	127	The command defined for service Icinga Startup Delay does not exist\n		
638	1	11	0	1	4	0	1	2013-08-03 16:10:14-04	222557	2013-08-03 16:10:14-04	244823	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022270000000000002	0.222	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009090s;;;0.000000;10.000000
639	1	13	0	1	4	0	1	2013-08-03 16:10:14-04	225866	2013-08-03 16:10:14-04	250766	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024899999999999999	0.22500000000000001	0	PROCS OK: 101 processes with STATE = RSZDT		
640	1	9	0	1	4	0	1	2013-08-03 16:10:14-04	230204	2013-08-03 16:10:18-04	246328	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0161199999999999	0.23000000000000001	0	PING OK - Packet loss = 0%, RTA = 0.03 ms		rta=0.030000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
641	1	6	0	1	4	0	1	2013-08-03 16:15:14-04	81342	2013-08-03 16:15:14-04	92418	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01108	0.081000000000000003	0	OK - load average: 0.00, 0.01, 0.00		load1=0.000;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
642	1	10	0	1	4	0	1	2013-08-03 16:15:14-04	85464	2013-08-03 16:15:14-04	95528	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010059999999999999	0.085000000000000006	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
643	1	12	0	1	4	0	1	2013-08-03 16:15:14-04	88000	2013-08-03 16:15:14-04	98939	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01094	0.086999999999999994	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
644	1	4	0	1	4	0	1	2013-08-03 16:15:14-04	91358	2013-08-03 16:15:14-04	102697	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011339999999999999	0.090999999999999998	0	USERS OK - 1 users currently logged in		users=1;20;50;0
645	1	7	0	4	4	1	1	2013-08-03 16:15:14-04	94548	2013-08-03 16:15:14-04	111567	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01702	0.094	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.005 second response time		time=0.004869s;;;0.000000 size=5237B;;;0
646	1	8	0	4	4	2	1	2013-08-03 16:15:14-04	99657	2013-08-03 16:15:14-04	113990	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.014330000000000001	0.099000000000000005	127	The command defined for service Icinga Startup Delay does not exist\n		
647	1	11	0	1	4	0	1	2013-08-03 16:15:14-04	101531	2013-08-03 16:15:14-04	122339	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.020809999999999999	0.10100000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009579s;;;0.000000;10.000000
648	1	13	0	1	4	0	1	2013-08-03 16:15:14-04	104617	2013-08-03 16:15:14-04	128208	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02359	0.104	0	PROCS OK: 100 processes with STATE = RSZDT		
649	1	9	0	1	4	0	1	2013-08-03 16:15:14-04	108212	2013-08-03 16:15:18-04	124484	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0162699999999996	0.108	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.055000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
650	1	6	0	1	4	0	1	2013-08-03 16:20:14-04	194190	2013-08-03 16:20:14-04	205810	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01162	0.19400000000000001	0	OK - load average: 0.02, 0.02, 0.00		load1=0.020;5.000;10.000;0; load5=0.020;4.000;6.000;0; load15=0.000;3.000;4.000;0;
651	1	10	0	1	4	0	1	2013-08-03 16:20:14-04	198280	2013-08-03 16:20:14-04	209543	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.011259999999999999	0.19800000000000001	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
652	1	12	0	1	4	0	1	2013-08-03 16:20:14-04	200132	2013-08-03 16:20:14-04	210755	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.010619999999999999	0.20000000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
653	1	4	0	1	4	0	1	2013-08-03 16:20:14-04	203982	2013-08-03 16:20:14-04	217549	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01357	0.20300000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
654	1	8	0	4	4	2	1	2013-08-03 16:20:14-04	211926	2013-08-03 16:20:14-04	224475	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01255	0.21099999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
655	1	7	0	4	4	1	1	2013-08-03 16:20:14-04	208310	2013-08-03 16:20:14-04	226990	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.018679999999999999	0.20799999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.007 second response time		time=0.006714s;;;0.000000 size=5237B;;;0
656	1	13	0	1	4	0	1	2013-08-03 16:20:14-04	218339	2013-08-03 16:20:14-04	243747	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.025409999999999999	0.218	0	PROCS OK: 105 processes with STATE = RSZDT		
657	1	11	0	1	4	0	1	2013-08-03 16:20:14-04	215113	2013-08-03 16:20:14-04	245447	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.030329999999999999	0.215	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.017229s;;;0.000000;10.000000
658	1	9	0	1	4	0	1	2013-08-03 16:20:14-04	222816	2013-08-03 16:20:18-04	240303	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0174899999999996	0.222	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
659	1	6	0	1	4	0	1	2013-08-03 16:25:14-04	9059	2013-08-03 16:25:14-04	20074	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01102	0.0080000000000000002	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
660	1	10	0	1	4	0	1	2013-08-03 16:25:14-04	11807	2013-08-03 16:25:14-04	21387	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.00958	0.010999999999999999	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
661	1	12	0	1	4	0	1	2013-08-03 16:25:14-04	13739	2013-08-03 16:25:14-04	24721	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01098	0.012999999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
662	1	4	0	1	4	0	1	2013-08-03 16:25:14-04	14759	2013-08-03 16:25:14-04	27436	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01268	0.014	0	USERS OK - 1 users currently logged in		users=1;20;50;0
663	1	8	0	4	4	2	1	2013-08-03 16:25:14-04	18121	2013-08-03 16:25:14-04	31248	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.013129999999999999	0.017999999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
664	1	7	0	4	4	1	1	2013-08-03 16:25:14-04	22282	2013-08-03 16:25:14-04	37573	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01529	0.021999999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.002 second response time		time=0.002416s;;;0.000000 size=5237B;;;0
665	1	11	0	1	4	0	1	2013-08-03 16:25:14-04	28370	2013-08-03 16:25:14-04	50407	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022040000000000001	0.028000000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009536s;;;0.000000;10.000000
666	1	13	0	1	4	0	1	2013-08-03 16:25:14-04	25404	2013-08-03 16:25:14-04	51214	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02581	0.025000000000000001	0	PROCS OK: 103 processes with STATE = RSZDT		
667	1	9	0	1	4	0	1	2013-08-03 16:25:14-04	31876	2013-08-03 16:25:18-04	48693	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0168200000000001	0.031	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.045000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
668	1	6	0	1	4	0	1	2013-08-03 16:30:14-04	166514	2013-08-03 16:30:14-04	178159	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.011639999999999999	0.16600000000000001	0	OK - load average: 0.02, 0.01, 0.00		load1=0.020;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
669	1	10	0	1	4	0	1	2013-08-03 16:30:14-04	170453	2013-08-03 16:30:14-04	180719	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01027	0.17000000000000001	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
670	1	12	0	1	4	0	1	2013-08-03 16:30:14-04	171860	2013-08-03 16:30:14-04	185871	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01401	0.17100000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
671	1	4	0	1	4	0	1	2013-08-03 16:30:14-04	176741	2013-08-03 16:30:14-04	189437	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.012699999999999999	0.17599999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
672	1	8	0	4	4	2	1	2013-08-03 16:30:14-04	179048	2013-08-03 16:30:14-04	198594	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.019550000000000001	0.17899999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
673	1	7	0	4	4	1	1	2013-08-03 16:30:14-04	183933	2013-08-03 16:30:14-04	206051	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.022120000000000001	0.183	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.002 second response time		time=0.002062s;;;0.000000 size=5237B;;;0
674	1	11	0	1	4	0	1	2013-08-03 16:30:14-04	188394	2013-08-03 16:30:14-04	215292	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.0269	0.188	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.012457s;;;0.000000;10.000000
675	1	13	0	1	4	0	1	2013-08-03 16:30:14-04	191527	2013-08-03 16:30:14-04	218859	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02733	0.191	0	PROCS OK: 101 processes with STATE = RSZDT		
676	1	9	0	1	4	0	1	2013-08-03 16:30:14-04	195781	2013-08-03 16:30:18-04	216571	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0207899999999999	0.19500000000000001	0	PING OK - Packet loss = 0%, RTA = 0.06 ms		rta=0.062000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
677	1	6	0	1	4	0	1	2013-08-03 16:35:14-04	63672	2013-08-03 16:35:14-04	96811	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.033140000000000003	0.063	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
678	1	10	0	1	4	0	1	2013-08-03 16:35:14-04	90349	2013-08-03 16:35:14-04	103853	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0135	0.089999999999999997	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
679	1	12	0	1	4	0	1	2013-08-03 16:35:14-04	97459	2013-08-03 16:35:14-04	110696	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01324	0.097000000000000003	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
680	1	4	0	1	4	0	1	2013-08-03 16:35:14-04	99810	2013-08-03 16:35:14-04	118232	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.018419999999999999	0.099000000000000005	0	USERS OK - 1 users currently logged in		users=1;20;50;0
681	1	8	0	4	4	2	1	2013-08-03 16:35:14-04	102536	2013-08-03 16:35:14-04	127606	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.025069999999999999	0.10199999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
682	1	7	0	4	4	1	1	2013-08-03 16:35:14-04	111574	2013-08-03 16:35:14-04	144441	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.032870000000000003	0.111	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.009 second response time		time=0.009044s;;;0.000000 size=5237B;;;0
683	1	11	0	1	4	0	1	2013-08-03 16:35:14-04	119046	2013-08-03 16:35:14-04	189831	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.070790000000000006	0.11899999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.042958s;;;0.000000;10.000000
684	1	13	0	1	4	0	1	2013-08-03 16:35:14-04	126284	2013-08-03 16:35:14-04	191311	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.065030000000000004	0.126	0	PROCS OK: 107 processes with STATE = RSZDT		
685	1	9	0	1	4	0	1	2013-08-03 16:35:14-04	128359	2013-08-03 16:35:18-04	180770	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0524100000000001	0.128	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.051000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
686	1	6	0	1	4	0	1	2013-08-03 16:40:14-04	28171	2013-08-03 16:40:14-04	39044	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010869999999999999	0.028000000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
687	1	10	0	1	4	0	1	2013-08-03 16:40:14-04	31736	2013-08-03 16:40:14-04	42938	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0112	0.031	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
688	1	12	0	1	4	0	1	2013-08-03 16:40:14-04	33562	2013-08-03 16:40:14-04	44231	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.010670000000000001	0.033000000000000002	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
689	1	4	0	1	4	0	1	2013-08-03 16:40:14-04	37518	2013-08-03 16:40:14-04	49849	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.012330000000000001	0.036999999999999998	0	USERS OK - 1 users currently logged in		users=1;20;50;0
690	1	8	0	4	4	2	1	2013-08-03 16:40:14-04	41799	2013-08-03 16:40:14-04	57825	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.016029999999999999	0.041000000000000002	127	The command defined for service Icinga Startup Delay does not exist\n		
691	1	7	0	4	4	1	1	2013-08-03 16:40:14-04	45498	2013-08-03 16:40:14-04	61632	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.016129999999999999	0.044999999999999998	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003650s;;;0.000000 size=5237B;;;0
692	1	11	0	1	4	0	1	2013-08-03 16:40:14-04	46546	2013-08-03 16:40:14-04	71810	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.025260000000000001	0.045999999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.012602s;;;0.000000;10.000000
693	1	13	0	1	4	0	1	2013-08-03 16:40:14-04	50755	2013-08-03 16:40:14-04	77457	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.026700000000000002	0.050000000000000003	0	PROCS OK: 101 processes with STATE = RSZDT		
694	1	9	0	1	4	0	1	2013-08-03 16:40:14-04	54925	2013-08-03 16:40:18-04	73498	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0185700000000004	0.053999999999999999	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.048000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
695	1	6	0	1	4	0	1	2013-08-03 16:45:14-04	202038	2013-08-03 16:45:14-04	213097	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01106	0.20100000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
696	1	10	0	1	4	0	1	2013-08-03 16:45:14-04	206486	2013-08-03 16:45:14-04	216296	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0098099999999999993	0.20599999999999999	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
697	1	12	0	1	4	0	1	2013-08-03 16:45:14-04	208487	2013-08-03 16:45:14-04	217564	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0090799999999999995	0.20799999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
698	1	4	0	1	4	0	1	2013-08-03 16:45:14-04	211819	2013-08-03 16:45:14-04	223621	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0118	0.21099999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
699	1	8	0	4	4	2	1	2013-08-03 16:45:14-04	215446	2013-08-03 16:45:14-04	230880	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015429999999999999	0.215	127	The command defined for service Icinga Startup Delay does not exist\n		
700	1	7	0	4	4	1	1	2013-08-03 16:45:14-04	218716	2013-08-03 16:45:14-04	234074	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01536	0.218	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003065s;;;0.000000 size=5237B;;;0
701	1	11	0	1	4	0	1	2013-08-03 16:45:14-04	219743	2013-08-03 16:45:14-04	243097	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.023349999999999999	0.219	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011040s;;;0.000000;10.000000
702	1	13	0	1	4	0	1	2013-08-03 16:45:14-04	224304	2013-08-03 16:45:14-04	248920	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02462	0.224	0	PROCS OK: 101 processes with STATE = RSZDT		
703	1	9	0	1	4	0	1	2013-08-03 16:45:14-04	228071	2013-08-03 16:45:18-04	245498	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0174300000000001	0.22800000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.047000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
704	1	6	0	1	4	0	1	2013-08-03 16:50:14-04	106998	2013-08-03 16:50:14-04	118482	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.011480000000000001	0.106	0	OK - load average: 0.02, 0.01, 0.00		load1=0.020;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
705	1	10	0	1	4	0	1	2013-08-03 16:50:14-04	111342	2013-08-03 16:50:14-04	121845	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010500000000000001	0.111	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
706	1	12	0	1	4	0	1	2013-08-03 16:50:14-04	113440	2013-08-03 16:50:14-04	122996	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0095600000000000008	0.113	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
707	1	4	0	1	4	0	1	2013-08-03 16:50:14-04	117172	2013-08-03 16:50:14-04	127927	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01076	0.11700000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
708	1	8	0	4	4	2	1	2013-08-03 16:50:14-04	119427	2013-08-03 16:50:14-04	135251	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015820000000000001	0.11899999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
709	1	7	0	4	4	1	1	2013-08-03 16:50:14-04	124010	2013-08-03 16:50:14-04	140112	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.0161	0.123	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000984s;;;0.000000 size=5237B;;;0
710	1	11	0	1	4	0	1	2013-08-03 16:50:14-04	126994	2013-08-03 16:50:14-04	150285	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.023290000000000002	0.126	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.012076s;;;0.000000;10.000000
711	1	13	0	1	4	0	1	2013-08-03 16:50:14-04	129684	2013-08-03 16:50:14-04	155314	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02563	0.129	0	PROCS OK: 101 processes with STATE = RSZDT		
712	1	9	0	1	4	0	1	2013-08-03 16:50:14-04	133538	2013-08-03 16:50:18-04	150265	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0167299999999999	0.13300000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.054000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
713	1	6	0	1	4	0	1	2013-08-03 16:55:14-04	22105	2013-08-03 16:55:14-04	32808	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010699999999999999	0.021999999999999999	0	OK - load average: 0.08, 0.02, 0.01		load1=0.080;5.000;10.000;0; load5=0.020;4.000;6.000;0; load15=0.010;3.000;4.000;0;
714	1	10	0	1	4	0	1	2013-08-03 16:55:14-04	25892	2013-08-03 16:55:14-04	36216	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010319999999999999	0.025000000000000001	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
715	1	12	0	1	4	0	1	2013-08-03 16:55:14-04	27192	2013-08-03 16:55:14-04	37415	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01022	0.027	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
716	1	4	0	1	4	0	1	2013-08-03 16:55:14-04	31569	2013-08-03 16:55:14-04	41873	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0103	0.031	0	USERS OK - 1 users currently logged in		users=1;20;50;0
717	1	8	0	4	4	2	1	2013-08-03 16:55:14-04	34978	2013-08-03 16:55:14-04	47172	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.012189999999999999	0.034000000000000002	127	The command defined for service Icinga Startup Delay does not exist\n		
718	1	7	0	4	4	1	1	2013-08-03 16:55:14-04	38667	2013-08-03 16:55:14-04	54010	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015339999999999999	0.037999999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002856s;;;0.000000 size=5237B;;;0
719	1	11	0	1	4	0	1	2013-08-03 16:55:14-04	40539	2013-08-03 16:55:14-04	62748	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022210000000000001	0.040000000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010222s;;;0.000000;10.000000
720	1	13	0	1	4	0	1	2013-08-03 16:55:14-04	44253	2013-08-03 16:55:14-04	68923	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024670000000000001	0.043999999999999997	0	PROCS OK: 101 processes with STATE = RSZDT		
721	1	9	0	1	4	0	1	2013-08-03 16:55:14-04	47894	2013-08-03 16:55:18-04	62913	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0150199999999998	0.047	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.041000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
722	1	6	0	1	4	0	1	2013-08-03 17:00:14-04	181602	2013-08-03 17:00:14-04	190721	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0091199999999999996	0.18099999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
723	1	10	0	1	4	0	1	2013-08-03 17:00:14-04	184106	2013-08-03 17:00:14-04	194585	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01048	0.184	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
724	1	12	0	1	4	0	1	2013-08-03 17:00:14-04	185917	2013-08-03 17:00:14-04	195774	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0098600000000000007	0.185	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
725	1	4	0	1	4	0	1	2013-08-03 17:00:14-04	189313	2013-08-03 17:00:14-04	201556	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.012239999999999999	0.189	0	USERS OK - 1 users currently logged in		users=1;20;50;0
726	1	8	0	4	4	2	1	2013-08-03 17:00:14-04	193442	2013-08-03 17:00:14-04	208792	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015350000000000001	0.193	127	The command defined for service Icinga Startup Delay does not exist\n		
727	1	7	0	4	4	1	1	2013-08-03 17:00:14-04	196737	2013-08-03 17:00:14-04	212573	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01584	0.19600000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000677s;;;0.000000 size=5237B;;;0
728	1	11	0	1	4	0	1	2013-08-03 17:00:14-04	198289	2013-08-03 17:00:14-04	223876	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.025590000000000002	0.19800000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.013742s;;;0.000000;10.000000
729	1	13	0	1	4	0	1	2013-08-03 17:00:14-04	202477	2013-08-03 17:00:14-04	230459	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.027980000000000001	0.20200000000000001	0	PROCS OK: 102 processes with STATE = RSZDT		
730	1	9	0	1	4	0	1	2013-08-03 17:00:14-04	205766	2013-08-03 17:00:18-04	221235	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0154699999999997	0.20499999999999999	0	PING OK - Packet loss = 0%, RTA = 0.03 ms		rta=0.031000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
731	1	6	0	1	4	0	1	2013-08-03 17:05:14-04	28371	2013-08-03 17:05:14-04	39142	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01077	0.028000000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
732	1	10	0	1	4	0	1	2013-08-03 17:05:14-04	32520	2013-08-03 17:05:14-04	43759	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01124	0.032000000000000001	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
733	1	12	0	1	4	0	1	2013-08-03 17:05:14-04	34765	2013-08-03 17:05:14-04	44853	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01009	0.034000000000000002	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
734	1	4	0	1	4	0	1	2013-08-03 17:05:14-04	38124	2013-08-03 17:05:14-04	49712	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01159	0.037999999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
735	1	8	0	4	4	2	1	2013-08-03 17:05:14-04	40943	2013-08-03 17:05:14-04	56820	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015879999999999998	0.040000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
736	1	7	0	4	4	1	1	2013-08-03 17:05:14-04	45581	2013-08-03 17:05:14-04	60772	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01519	0.044999999999999998	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000625s;;;0.000000 size=5237B;;;0
737	1	11	0	1	4	0	1	2013-08-03 17:05:14-04	46799	2013-08-03 17:05:14-04	70215	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02342	0.045999999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011070s;;;0.000000;10.000000
738	1	13	0	1	4	0	1	2013-08-03 17:05:14-04	50505	2013-08-03 17:05:14-04	76204	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.025700000000000001	0.050000000000000003	0	PROCS OK: 103 processes with STATE = RSZDT		
739	1	9	0	1	4	0	1	2013-08-03 17:05:14-04	54031	2013-08-03 17:05:18-04	72418	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0183900000000001	0.053999999999999999	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.054000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
740	1	6	0	1	4	0	1	2013-08-03 17:10:14-04	199864	2013-08-03 17:10:14-04	210729	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01086	0.19900000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
741	1	10	0	1	4	0	1	2013-08-03 17:10:14-04	203673	2013-08-03 17:10:14-04	214024	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01035	0.20300000000000001	0	DISK OK - free space: / 14186 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
742	1	12	0	1	4	0	1	2013-08-03 17:10:14-04	205375	2013-08-03 17:10:14-04	216317	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01094	0.20499999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
743	1	4	0	1	4	0	1	2013-08-03 17:10:14-04	209371	2013-08-03 17:10:14-04	220836	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01146	0.20899999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
744	1	8	0	4	4	2	1	2013-08-03 17:10:14-04	212805	2013-08-03 17:10:14-04	227676	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01487	0.21199999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
745	1	7	0	4	4	1	1	2013-08-03 17:10:14-04	217017	2013-08-03 17:10:14-04	231897	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.014880000000000001	0.216	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000872s;;;0.000000 size=5237B;;;0
746	1	11	0	1	4	0	1	2013-08-03 17:10:14-04	218193	2013-08-03 17:10:14-04	237344	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.01915	0.218	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.007362s;;;0.000000;10.000000
747	1	13	0	1	4	0	1	2013-08-03 17:10:14-04	221605	2013-08-03 17:10:14-04	245093	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02349	0.221	0	PROCS OK: 103 processes with STATE = RSZDT		
748	1	9	0	1	4	0	1	2013-08-03 17:10:14-04	224879	2013-08-03 17:10:18-04	241212	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01633	0.224	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
749	1	10	0	1	4	0	1	2013-08-03 17:15:14-04	153817	2013-08-03 17:15:14-04	165983	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01217	0.153	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
750	1	12	0	1	4	0	1	2013-08-03 17:15:14-04	157615	2013-08-03 17:15:14-04	167159	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0095399999999999999	0.157	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
751	1	6	0	1	4	0	1	2013-08-03 17:15:14-04	152789	2013-08-03 17:15:14-04	167546	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.014760000000000001	0.152	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
752	1	4	0	1	4	0	1	2013-08-03 17:15:14-04	160580	2013-08-03 17:15:14-04	172365	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01179	0.16	0	USERS OK - 1 users currently logged in		users=1;20;50;0
753	1	8	0	4	4	2	1	2013-08-03 17:15:14-04	164079	2013-08-03 17:15:14-04	176294	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01222	0.16400000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
754	1	7	0	4	4	1	1	2013-08-03 17:15:14-04	168393	2013-08-03 17:15:14-04	183033	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01464	0.16800000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002666s;;;0.000000 size=5237B;;;0
755	1	11	0	1	4	0	1	2013-08-03 17:15:14-04	170249	2013-08-03 17:15:14-04	192997	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022749999999999999	0.17000000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011114s;;;0.000000;10.000000
756	1	13	0	1	4	0	1	2013-08-03 17:15:14-04	172973	2013-08-03 17:15:14-04	199840	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.026870000000000002	0.17199999999999999	0	PROCS OK: 102 processes with STATE = RSZDT		
757	1	9	0	1	4	0	1	2013-08-03 17:15:14-04	177022	2013-08-03 17:15:18-04	194677	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0176600000000002	0.17599999999999999	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.044000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
758	1	10	0	1	4	0	1	2013-08-03 17:20:14-04	71996	2013-08-03 17:20:14-04	82761	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01077	0.070999999999999994	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
759	1	12	0	1	4	0	1	2013-08-03 17:20:14-04	76003	2013-08-03 17:20:14-04	85992	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0099900000000000006	0.074999999999999997	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
760	1	6	0	1	4	0	1	2013-08-03 17:20:14-04	77223	2013-08-03 17:20:14-04	89268	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01205	0.076999999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
761	1	4	0	1	4	0	1	2013-08-03 17:20:14-04	81562	2013-08-03 17:20:14-04	92385	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01082	0.081000000000000003	0	USERS OK - 1 users currently logged in		users=1;20;50;0
762	1	8	0	4	4	2	1	2013-08-03 17:20:14-04	84748	2013-08-03 17:20:14-04	96926	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01218	0.084000000000000005	127	The command defined for service Icinga Startup Delay does not exist\n		
763	1	7	0	4	4	1	1	2013-08-03 17:20:14-04	88128	2013-08-03 17:20:14-04	104060	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01593	0.087999999999999995	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003086s;;;0.000000 size=5237B;;;0
764	1	11	0	1	4	0	1	2013-08-03 17:20:14-04	91091	2013-08-03 17:20:14-04	113756	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02266	0.090999999999999998	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010785s;;;0.000000;10.000000
765	1	13	0	1	4	0	1	2013-08-03 17:20:14-04	94149	2013-08-03 17:20:14-04	117503	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023349999999999999	0.094	0	PROCS OK: 103 processes with STATE = RSZDT		
766	1	9	0	1	4	0	1	2013-08-03 17:20:14-04	97776	2013-08-03 17:20:18-04	114588	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0168100000000004	0.097000000000000003	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.050000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
767	1	10	0	1	4	0	1	2013-08-03 17:25:14-04	243406	2013-08-03 17:25:14-04	254771	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01137	0.24299999999999999	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2623MB;14167;15938;0;17709
768	1	12	0	1	4	0	1	2013-08-03 17:25:14-04	248161	2013-08-03 17:25:14-04	258101	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0099399999999999992	0.248	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
769	1	6	0	1	4	0	1	2013-08-03 17:25:14-04	248998	2013-08-03 17:25:14-04	261165	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01217	0.248	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
770	1	4	0	1	4	0	1	2013-08-03 17:25:14-04	253654	2013-08-03 17:25:14-04	264905	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01125	0.253	0	USERS OK - 1 users currently logged in		users=1;20;50;0
771	1	8	0	4	4	2	1	2013-08-03 17:25:14-04	256969	2013-08-03 17:25:14-04	272716	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01575	0.25600000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
772	1	7	0	4	4	1	1	2013-08-03 17:25:14-04	261887	2013-08-03 17:25:14-04	276032	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01414	0.26100000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000626s;;;0.000000 size=5237B;;;0
773	1	11	0	1	4	0	1	2013-08-03 17:25:14-04	263772	2013-08-03 17:25:14-04	286047	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022270000000000002	0.26300000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011246s;;;0.000000;10.000000
774	1	13	0	1	4	0	1	2013-08-03 17:25:14-04	266879	2013-08-03 17:25:14-04	290527	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023650000000000001	0.26600000000000001	0	PROCS OK: 104 processes with STATE = RSZDT		
775	1	9	0	1	4	0	1	2013-08-03 17:25:14-04	269997	2013-08-03 17:25:18-04	285582	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0155799999999999	0.26900000000000002	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.044000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
776	1	10	0	1	4	0	1	2013-08-03 17:30:14-04	166175	2013-08-03 17:30:14-04	177881	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01171	0.16600000000000001	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
777	1	12	0	1	4	0	1	2013-08-03 17:30:14-04	170725	2013-08-03 17:30:14-04	181315	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01059	0.17000000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
778	1	6	0	1	4	0	1	2013-08-03 17:30:14-04	172160	2013-08-03 17:30:14-04	182299	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01014	0.17199999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
779	1	4	0	1	4	0	1	2013-08-03 17:30:14-04	176623	2013-08-03 17:30:14-04	188178	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01155	0.17599999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
780	1	8	0	4	4	2	1	2013-08-03 17:30:14-04	180267	2013-08-03 17:30:14-04	191703	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.011440000000000001	0.17999999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
781	1	7	0	4	4	1	1	2013-08-03 17:30:14-04	183493	2013-08-03 17:30:14-04	198460	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.014970000000000001	0.183	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002911s;;;0.000000 size=5237B;;;0
782	1	11	0	1	4	0	1	2013-08-03 17:30:14-04	185493	2013-08-03 17:30:14-04	206785	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02129	0.185	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009392s;;;0.000000;10.000000
783	1	13	0	1	4	0	1	2013-08-03 17:30:14-04	188900	2013-08-03 17:30:14-04	212315	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02341	0.188	0	PROCS OK: 101 processes with STATE = RSZDT		
784	1	9	0	1	4	0	1	2013-08-03 17:30:14-04	192529	2013-08-03 17:30:18-04	209760	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0172299999999996	0.192	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
785	1	6	0	1	4	0	1	2013-08-03 21:30:59-04	67031	2013-08-03 21:30:59-04	76626	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0095999999999999992	0.067000000000000004	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
786	1	4	0	1	4	0	1	2013-08-03 21:30:59-04	69749	2013-08-03 21:30:59-04	77596	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0078499999999999993	0.069000000000000006	0	USERS OK - 1 users currently logged in		users=1;20;50;0
787	1	8	0	4	4	2	1	2013-08-03 21:30:59-04	75534	2013-08-03 21:30:59-04	88233	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.012699999999999999	0.074999999999999997	127	The command defined for service Icinga Startup Delay does not exist\n		
788	1	7	0	4	4	1	1	2013-08-03 21:30:59-04	71890	2013-08-03 21:30:59-04	89557	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.017670000000000002	0.070999999999999994	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.005 second response time		time=0.005378s;;;0.000000 size=5237B;;;0
789	1	10	0	1	4	0	1	2013-08-03 21:30:59-04	82009	2013-08-03 21:30:59-04	95045	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01304	0.081000000000000003	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
790	1	12	0	1	4	0	1	2013-08-03 21:30:59-04	91288	2013-08-03 21:30:59-04	104227	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01294	0.090999999999999998	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
791	1	11	0	1	4	0	1	2013-08-03 21:30:59-04	86707	2013-08-03 21:30:59-04	108414	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02171	0.085999999999999993	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009837s;;;0.000000;10.000000
792	1	13	0	1	4	0	1	2013-08-03 21:30:59-04	96045	2013-08-03 21:30:59-04	123007	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.026960000000000001	0.096000000000000002	0	PROCS OK: 102 processes with STATE = RSZDT		
793	1	9	0	1	4	0	1	2013-08-03 21:30:59-04	78897	2013-08-03 21:31:03-04	93387	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0144900000000003	0.078	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.046000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
794	1	4	0	1	4	0	1	2013-08-03 21:35:59-04	16772	2013-08-03 21:35:59-04	25454	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0086800000000000002	0.016	0	USERS OK - 1 users currently logged in		users=1;20;50;0
795	1	6	0	1	4	0	1	2013-08-03 21:35:59-04	13914	2013-08-03 21:35:59-04	26434	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01252	0.012999999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
796	1	8	0	4	4	2	1	2013-08-03 21:35:59-04	18988	2013-08-03 21:35:59-04	30627	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.011639999999999999	0.017999999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
797	1	10	0	1	4	0	1	2013-08-03 21:35:59-04	24317	2013-08-03 21:35:59-04	36813	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.012500000000000001	0.024	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
798	1	7	0	4	4	1	1	2013-08-03 21:35:59-04	21252	2013-08-03 21:35:59-04	39756	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.018499999999999999	0.021000000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.006 second response time		time=0.005679s;;;0.000000 size=5237B;;;0
799	1	12	0	1	4	0	1	2013-08-03 21:35:59-04	28951	2013-08-03 21:35:59-04	40920	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01197	0.028000000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
800	1	11	0	1	4	0	1	2013-08-03 21:35:59-04	34436	2013-08-03 21:35:59-04	54090	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.019650000000000001	0.034000000000000002	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.008812s;;;0.000000;10.000000
801	1	13	0	1	4	0	1	2013-08-03 21:35:59-04	37561	2013-08-03 21:35:59-04	59445	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02188	0.036999999999999998	0	PROCS OK: 103 processes with STATE = RSZDT		
802	1	9	0	1	4	0	1	2013-08-03 21:35:59-04	41924	2013-08-03 21:36:03-04	53876	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0119499999999997	0.041000000000000002	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
803	1	4	0	1	4	0	1	2013-08-03 21:40:59-04	201685	2013-08-03 21:40:59-04	212702	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01102	0.20100000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
804	1	6	0	1	4	0	1	2013-08-03 21:40:59-04	204538	2013-08-03 21:40:59-04	214547	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01001	0.20399999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
805	1	8	0	4	4	2	1	2013-08-03 21:40:59-04	206513	2013-08-03 21:40:59-04	219006	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.012489999999999999	0.20599999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
806	1	10	0	1	4	0	1	2013-08-03 21:40:59-04	209177	2013-08-03 21:40:59-04	223283	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.014109999999999999	0.20899999999999999	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
807	1	12	0	1	4	0	1	2013-08-03 21:40:59-04	216948	2013-08-03 21:40:59-04	233321	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.016369999999999999	0.216	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
808	1	7	0	4	4	1	1	2013-08-03 21:40:59-04	213438	2013-08-03 21:40:59-04	237443	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.024	0.21299999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.007 second response time		time=0.007236s;;;0.000000 size=5237B;;;0
809	1	11	0	1	4	0	1	2013-08-03 21:40:59-04	221282	2013-08-03 21:40:59-04	245933	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.024649999999999998	0.221	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010346s;;;0.000000;10.000000
810	1	13	0	1	4	0	1	2013-08-03 21:40:59-04	227166	2013-08-03 21:40:59-04	253151	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.025989999999999999	0.22700000000000001	0	PROCS OK: 103 processes with STATE = RSZDT		
811	1	9	0	1	4	0	1	2013-08-03 21:40:59-04	232229	2013-08-03 21:41:03-04	247913	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0156799999999997	0.23200000000000001	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.039000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
812	1	4	0	1	4	0	1	2013-08-03 21:45:59-04	122268	2013-08-03 21:45:59-04	133622	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011350000000000001	0.122	0	USERS OK - 1 users currently logged in		users=1;20;50;0
813	1	6	0	1	4	0	1	2013-08-03 21:45:59-04	126811	2013-08-03 21:45:59-04	138643	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01183	0.126	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
814	1	10	0	1	4	0	1	2013-08-03 21:45:59-04	132085	2013-08-03 21:45:59-04	144319	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01223	0.13200000000000001	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
815	1	8	0	4	4	2	1	2013-08-03 21:45:59-04	128675	2013-08-03 21:45:59-04	144591	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01592	0.128	127	The command defined for service Icinga Startup Delay does not exist\n		
816	1	12	0	1	4	0	1	2013-08-03 21:45:59-04	137601	2013-08-03 21:45:59-04	148772	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.011169999999999999	0.13700000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
817	1	7	0	4	4	1	1	2013-08-03 21:45:59-04	142373	2013-08-03 21:45:59-04	156631	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01426	0.14199999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003653s;;;0.000000 size=5237B;;;0
818	1	11	0	1	4	0	1	2013-08-03 21:45:59-04	145435	2013-08-03 21:45:59-04	172577	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.027140000000000001	0.14499999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.016947s;;;0.000000;10.000000
819	1	13	0	1	4	0	1	2013-08-03 21:45:59-04	147488	2013-08-03 21:45:59-04	197322	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.049829999999999999	0.14699999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
820	1	9	0	1	4	0	1	2013-08-03 21:45:59-04	150529	2013-08-03 21:46:03-04	169663	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0191299999999996	0.14999999999999999	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.045000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
821	1	4	0	1	4	0	1	2013-08-03 21:50:59-04	39184	2013-08-03 21:50:59-04	49540	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.010359999999999999	0.039	0	USERS OK - 1 users currently logged in		users=1;20;50;0
822	1	6	0	1	4	0	1	2013-08-03 21:50:59-04	41780	2013-08-03 21:50:59-04	51466	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0096900000000000007	0.041000000000000002	0	OK - load average: 0.06, 0.02, 0.00		load1=0.060;5.000;10.000;0; load5=0.020;4.000;6.000;0; load15=0.000;3.000;4.000;0;
823	1	10	0	1	4	0	1	2013-08-03 21:50:59-04	43835	2013-08-03 21:50:59-04	54983	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01115	0.042999999999999997	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
824	1	12	0	1	4	0	1	2013-08-03 21:50:59-04	50261	2013-08-03 21:50:59-04	59303	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0090399999999999994	0.050000000000000003	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
825	1	8	0	4	4	2	1	2013-08-03 21:50:59-04	44976	2013-08-03 21:50:59-04	61891	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.016910000000000001	0.043999999999999997	127	The command defined for service Icinga Startup Delay does not exist\n		
826	1	7	0	4	4	1	1	2013-08-03 21:50:59-04	53995	2013-08-03 21:50:59-04	71062	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.017069999999999998	0.052999999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.007 second response time		time=0.007296s;;;0.000000 size=5237B;;;0
827	1	11	0	1	4	0	1	2013-08-03 21:50:59-04	57300	2013-08-03 21:50:59-04	79802	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022499999999999999	0.057000000000000002	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.013487s;;;0.000000;10.000000
828	1	13	0	1	4	0	1	2013-08-03 21:50:59-04	61646	2013-08-03 21:50:59-04	86585	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02494	0.060999999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
829	1	9	0	1	4	0	1	2013-08-03 21:50:59-04	65016	2013-08-03 21:51:03-04	82059	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0170399999999997	0.064000000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.049000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
830	1	4	0	1	4	0	1	2013-08-03 21:55:59-04	207616	2013-08-03 21:55:59-04	220718	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.013100000000000001	0.20699999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
831	1	6	0	1	4	0	1	2013-08-03 21:55:59-04	212085	2013-08-03 21:55:59-04	224027	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.011939999999999999	0.21199999999999999	0	OK - load average: 0.01, 0.00, 0.00		load1=0.010;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
832	1	10	0	1	4	0	1	2013-08-03 21:55:59-04	214614	2013-08-03 21:55:59-04	236937	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.02232	0.214	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
833	1	12	0	1	4	0	1	2013-08-03 21:55:59-04	218888	2013-08-03 21:55:59-04	238512	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.019619999999999999	0.218	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
834	1	8	0	4	4	2	1	2013-08-03 21:55:59-04	222849	2013-08-03 21:55:59-04	240315	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.017469999999999999	0.222	127	The command defined for service Icinga Startup Delay does not exist\n		
835	1	7	0	4	4	1	1	2013-08-03 21:55:59-04	225264	2013-08-03 21:55:59-04	256580	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.031320000000000001	0.22500000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.009 second response time		time=0.009250s;;;0.000000 size=5237B;;;0
836	1	11	0	1	4	0	1	2013-08-03 21:55:59-04	241068	2013-08-03 21:55:59-04	300063	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.058990000000000001	0.24099999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.029287s;;;0.000000;10.000000
837	1	13	0	1	4	0	1	2013-08-03 21:55:59-04	242618	2013-08-03 21:55:59-04	305649	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.063030000000000003	0.24199999999999999	0	PROCS OK: 108 processes with STATE = RSZDT		
838	1	9	0	1	4	0	1	2013-08-03 21:55:59-04	243593	2013-08-03 21:56:03-04	307001	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0634100000000002	0.24299999999999999	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.049000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
839	1	4	0	1	4	0	1	2013-08-03 22:00:59-04	135939	2013-08-03 22:00:59-04	146766	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.010829999999999999	0.13500000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
840	1	6	0	1	4	0	1	2013-08-03 22:00:59-04	139893	2013-08-03 22:00:59-04	150495	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0106	0.13900000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
841	1	10	0	1	4	0	1	2013-08-03 22:00:59-04	141405	2013-08-03 22:00:59-04	151510	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010109999999999999	0.14099999999999999	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
842	1	12	0	1	4	0	1	2013-08-03 22:00:59-04	145452	2013-08-03 22:00:59-04	156042	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01059	0.14499999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
843	1	8	0	4	4	2	1	2013-08-03 22:00:59-04	149221	2013-08-03 22:00:59-04	164880	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01566	0.14899999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
844	1	7	0	4	4	1	1	2013-08-03 22:00:59-04	152697	2013-08-03 22:00:59-04	168048	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015350000000000001	0.152	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.004371s;;;0.000000 size=5237B;;;0
845	1	11	0	1	4	0	1	2013-08-03 22:00:59-04	154727	2013-08-03 22:00:59-04	175334	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02061	0.154	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.008422s;;;0.000000;10.000000
846	1	13	0	1	4	0	1	2013-08-03 22:00:59-04	158417	2013-08-03 22:00:59-04	182629	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024209999999999999	0.158	0	PROCS OK: 102 processes with STATE = RSZDT		
847	1	9	0	1	4	0	1	2013-08-03 22:00:59-04	161781	2013-08-03 22:01:03-04	177791	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0160099999999996	0.161	0	PING OK - Packet loss = 0%, RTA = 0.03 ms		rta=0.029000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
848	1	4	0	1	4	0	1	2013-08-03 22:05:59-04	217149	2013-08-03 22:05:59-04	229620	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01247	0.217	0	USERS OK - 1 users currently logged in		users=1;20;50;0
849	1	6	0	1	4	0	1	2013-08-03 22:05:59-04	221675	2013-08-03 22:05:59-04	231435	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0097599999999999996	0.221	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
850	1	10	0	1	4	0	1	2013-08-03 22:05:59-04	223975	2013-08-03 22:05:59-04	234305	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010330000000000001	0.223	0	DISK OK - free space: / 14185 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
851	1	12	0	1	4	0	1	2013-08-03 22:05:59-04	226730	2013-08-03 22:05:59-04	238895	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.012160000000000001	0.22600000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
852	1	8	0	4	4	2	1	2013-08-03 22:05:59-04	230540	2013-08-03 22:05:59-04	247056	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01652	0.23000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
853	1	7	0	4	4	1	1	2013-08-03 22:05:59-04	235318	2013-08-03 22:05:59-04	250855	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01554	0.23499999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.006 second response time		time=0.005632s;;;0.000000 size=5237B;;;0
854	1	11	0	1	4	0	1	2013-08-03 22:05:59-04	238680	2013-08-03 22:05:59-04	270919	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.032239999999999998	0.23799999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.021775s;;;0.000000;10.000000
855	1	13	0	1	4	0	1	2013-08-03 22:05:59-04	242407	2013-08-03 22:05:59-04	277283	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.034880000000000001	0.24199999999999999	0	PROCS OK: 103 processes with STATE = RSZDT		
856	1	9	0	1	4	0	1	2013-08-03 22:05:59-04	245539	2013-08-03 22:06:03-04	264307	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01877	0.245	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.044000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
857	1	4	0	1	4	0	1	2013-08-03 22:10:59-04	58113	2013-08-03 22:10:59-04	68624	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01051	0.058000000000000003	0	USERS OK - 1 users currently logged in		users=1;20;50;0
858	1	6	0	1	4	0	1	2013-08-03 22:10:59-04	62306	2013-08-03 22:10:59-04	71869	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0095600000000000008	0.062	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
859	1	10	0	1	4	0	1	2013-08-03 22:10:59-04	64203	2013-08-03 22:10:59-04	75408	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0112	0.064000000000000001	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
860	1	12	0	1	4	0	1	2013-08-03 22:10:59-04	67378	2013-08-03 22:10:59-04	76447	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0090699999999999999	0.067000000000000004	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
861	1	8	0	4	4	2	1	2013-08-03 22:10:59-04	70878	2013-08-03 22:10:59-04	82503	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01162	0.070000000000000007	127	The command defined for service Icinga Startup Delay does not exist\n		
862	1	7	0	4	4	1	1	2013-08-03 22:10:59-04	74555	2013-08-03 22:10:59-04	88734	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01418	0.073999999999999996	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002598s;;;0.000000 size=5237B;;;0
863	1	11	0	1	4	0	1	2013-08-03 22:10:59-04	77296	2013-08-03 22:10:59-04	98250	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02095	0.076999999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010738s;;;0.000000;10.000000
864	1	13	0	1	4	0	1	2013-08-03 22:10:59-04	78207	2013-08-03 22:10:59-04	103463	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.025260000000000001	0.078	0	PROCS OK: 103 processes with STATE = RSZDT		
865	1	9	0	1	4	0	1	2013-08-03 22:10:59-04	83168	2013-08-03 22:11:03-04	101420	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0182500000000001	0.083000000000000004	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.051000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
866	1	4	0	1	4	0	1	2013-08-03 22:15:59-04	244297	2013-08-03 22:15:59-04	255449	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01115	0.24399999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
867	1	6	0	1	4	0	1	2013-08-03 22:15:59-04	248988	2013-08-03 22:15:59-04	258700	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0097099999999999999	0.248	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
868	1	10	0	1	4	0	1	2013-08-03 22:15:59-04	252120	2013-08-03 22:15:59-04	262252	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01013	0.252	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
869	1	12	0	1	4	0	1	2013-08-03 22:15:59-04	256414	2013-08-03 22:15:59-04	267929	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.011520000000000001	0.25600000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
870	1	8	0	4	4	2	1	2013-08-03 22:15:59-04	259858	2013-08-03 22:15:59-04	273285	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.013429999999999999	0.25900000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
871	1	7	0	4	4	1	1	2013-08-03 22:15:59-04	263133	2013-08-03 22:15:59-04	277817	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01468	0.26300000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000534s;;;0.000000 size=5237B;;;0
872	1	11	0	1	4	0	1	2013-08-03 22:15:59-04	264489	2013-08-03 22:15:59-04	286694	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022200000000000001	0.26400000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011162s;;;0.000000;10.000000
873	1	13	0	1	4	0	1	2013-08-03 22:15:59-04	268565	2013-08-03 22:15:59-04	292787	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024219999999999998	0.26800000000000002	0	PROCS OK: 102 processes with STATE = RSZDT		
874	1	9	0	1	4	0	1	2013-08-03 22:15:59-04	272093	2013-08-03 22:16:03-04	291108	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0190099999999997	0.27200000000000002	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.050000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
875	1	4	0	1	4	0	1	2013-08-03 22:20:59-04	187940	2013-08-03 22:20:59-04	199384	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.011440000000000001	0.187	0	USERS OK - 1 users currently logged in		users=1;20;50;0
876	1	6	0	1	4	0	1	2013-08-03 22:20:59-04	192435	2013-08-03 22:20:59-04	202868	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01043	0.192	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
877	1	10	0	1	4	0	1	2013-08-03 22:20:59-04	194528	2013-08-03 22:20:59-04	204075	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0095499999999999995	0.19400000000000001	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
878	1	12	0	1	4	0	1	2013-08-03 22:20:59-04	198056	2013-08-03 22:20:59-04	207909	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0098499999999999994	0.19800000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
879	1	8	0	4	4	2	1	2013-08-03 22:20:59-04	201846	2013-08-03 22:20:59-04	213083	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01124	0.20100000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
880	1	7	0	4	4	1	1	2013-08-03 22:20:59-04	205201	2013-08-03 22:20:59-04	220523	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01532	0.20499999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.005 second response time		time=0.004519s;;;0.000000 size=5237B;;;0
881	1	11	0	1	4	0	1	2013-08-03 22:20:59-04	206901	2013-08-03 22:20:59-04	229164	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022259999999999999	0.20599999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009973s;;;0.000000;10.000000
882	1	13	0	1	4	0	1	2013-08-03 22:20:59-04	211408	2013-08-03 22:20:59-04	233176	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.021770000000000001	0.21099999999999999	0	PROCS OK: 103 processes with STATE = RSZDT		
883	1	9	0	1	4	0	1	2013-08-03 22:20:59-04	216220	2013-08-03 22:21:03-04	229797	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0135800000000001	0.216	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.041000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
884	1	4	0	1	4	0	1	2013-08-03 22:25:59-04	109189	2013-08-03 22:25:59-04	120136	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01095	0.109	0	USERS OK - 1 users currently logged in		users=1;20;50;0
885	1	6	0	1	4	0	1	2013-08-03 22:25:59-04	113692	2013-08-03 22:25:59-04	124527	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010840000000000001	0.113	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
886	1	10	0	1	4	0	1	2013-08-03 22:25:59-04	115746	2013-08-03 22:25:59-04	125534	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0097900000000000001	0.115	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
887	1	12	0	1	4	0	1	2013-08-03 22:25:59-04	119122	2013-08-03 22:25:59-04	130721	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.011599999999999999	0.11899999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
888	1	8	0	4	4	2	1	2013-08-03 22:25:59-04	121781	2013-08-03 22:25:59-04	137686	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015900000000000001	0.121	127	The command defined for service Icinga Startup Delay does not exist\n		
889	1	7	0	4	4	1	1	2013-08-03 22:25:59-04	126268	2013-08-03 22:25:59-04	140804	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.014540000000000001	0.126	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003265s;;;0.000000 size=5237B;;;0
890	1	11	0	1	4	0	1	2013-08-03 22:25:59-04	127708	2013-08-03 22:25:59-04	150074	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022370000000000001	0.127	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010357s;;;0.000000;10.000000
891	1	13	0	1	4	0	1	2013-08-03 22:25:59-04	131449	2013-08-03 22:25:59-04	153612	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.022159999999999999	0.13100000000000001	0	PROCS OK: 102 processes with STATE = RSZDT		
892	1	9	0	1	4	0	1	2013-08-03 22:25:59-04	134675	2013-08-03 22:26:03-04	149320	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01464	0.13400000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.050000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
893	1	4	0	1	4	0	1	2013-08-03 22:30:59-04	23683	2013-08-03 22:30:59-04	32462	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0087799999999999996	0.023	0	USERS OK - 1 users currently logged in		users=1;20;50;0
894	1	6	0	1	4	0	1	2013-08-03 22:30:59-04	25985	2013-08-03 22:30:59-04	35690	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0097099999999999999	0.025000000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
895	1	10	0	1	4	0	1	2013-08-03 22:30:59-04	27956	2013-08-03 22:30:59-04	38663	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010710000000000001	0.027	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
896	1	12	0	1	4	0	1	2013-08-03 22:30:59-04	31256	2013-08-03 22:30:59-04	41267	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01001	0.031	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
897	1	8	0	4	4	2	1	2013-08-03 22:30:59-04	34824	2013-08-03 22:30:59-04	49154	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.014330000000000001	0.034000000000000002	127	The command defined for service Icinga Startup Delay does not exist\n		
898	1	7	0	4	4	1	1	2013-08-03 22:30:59-04	37356	2013-08-03 22:30:59-04	53648	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.016289999999999999	0.036999999999999998	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.004406s;;;0.000000 size=5237B;;;0
899	1	11	0	1	4	0	1	2013-08-03 22:30:59-04	42046	2013-08-03 22:30:59-04	62346	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.020299999999999999	0.042000000000000003	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010632s;;;0.000000;10.000000
900	1	13	0	1	4	0	1	2013-08-03 22:30:59-04	44668	2013-08-03 22:30:59-04	67553	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.022890000000000001	0.043999999999999997	0	PROCS OK: 102 processes with STATE = RSZDT		
901	1	9	0	1	4	0	1	2013-08-03 22:30:59-04	47259	2013-08-03 22:31:03-04	62899	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0156400000000003	0.047	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.042000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
902	1	4	0	1	4	0	1	2013-08-03 22:35:59-04	208964	2013-08-03 22:35:59-04	217822	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0088599999999999998	0.20799999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
903	1	6	0	1	4	0	1	2013-08-03 22:35:59-04	211343	2013-08-03 22:35:59-04	221168	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0098200000000000006	0.21099999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
904	1	10	0	1	4	0	1	2013-08-03 22:35:59-04	213328	2013-08-03 22:35:59-04	224757	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.011429999999999999	0.21299999999999999	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
905	1	12	0	1	4	0	1	2013-08-03 22:35:59-04	216457	2013-08-03 22:35:59-04	225955	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0094999999999999998	0.216	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
906	1	8	0	4	4	2	1	2013-08-03 22:35:59-04	220222	2013-08-03 22:35:59-04	231901	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.011679999999999999	0.22	127	The command defined for service Icinga Startup Delay does not exist\n		
907	1	7	0	4	4	1	1	2013-08-03 22:35:59-04	223669	2013-08-03 22:35:59-04	239680	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01601	0.223	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000519s;;;0.000000 size=5237B;;;0
908	1	11	0	1	4	0	1	2013-08-03 22:35:59-04	226875	2013-08-03 22:35:59-04	243967	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.017090000000000001	0.22600000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.007707s;;;0.000000;10.000000
909	1	13	0	1	4	0	1	2013-08-03 22:35:59-04	229974	2013-08-03 22:35:59-04	254949	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024979999999999999	0.22900000000000001	0	PROCS OK: 103 processes with STATE = RSZDT		
910	1	9	0	1	4	0	1	2013-08-03 22:35:59-04	234215	2013-08-03 22:36:03-04	248277	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0140599999999997	0.23400000000000001	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.037000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
911	1	4	0	1	4	0	1	2013-08-03 22:40:59-04	147629	2013-08-03 22:40:59-04	156427	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0088000000000000005	0.14699999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
912	1	6	0	1	4	0	1	2013-08-03 22:40:59-04	150183	2013-08-03 22:40:59-04	162397	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01221	0.14999999999999999	0	OK - load average: 0.05, 0.01, 0.00		load1=0.050;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
913	1	10	0	1	4	0	1	2013-08-03 22:40:59-04	152295	2013-08-03 22:40:59-04	163421	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.011129999999999999	0.152	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2624MB;14167;15938;0;17709
914	1	12	0	1	4	0	1	2013-08-03 22:40:59-04	155406	2013-08-03 22:40:59-04	167891	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01248	0.155	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
915	1	8	0	4	4	2	1	2013-08-03 22:40:59-04	161358	2013-08-03 22:40:59-04	174878	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.013520000000000001	0.161	127	The command defined for service Icinga Startup Delay does not exist\n		
916	1	7	0	4	4	1	1	2013-08-03 22:40:59-04	165068	2013-08-03 22:40:59-04	180274	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01521	0.16500000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.002520s;;;0.000000 size=5237B;;;0
917	1	11	0	1	4	0	1	2013-08-03 22:40:59-04	168536	2013-08-03 22:40:59-04	189202	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.020670000000000001	0.16800000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010139s;;;0.000000;10.000000
918	1	13	0	1	4	0	1	2013-08-03 22:40:59-04	172467	2013-08-03 22:40:59-04	194673	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.022210000000000001	0.17199999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
919	1	9	0	1	4	0	1	2013-08-03 22:40:59-04	175601	2013-08-03 22:41:03-04	191403	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0157999999999996	0.17499999999999999	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.054000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
920	1	4	0	1	4	0	1	2013-08-03 22:45:59-04	88718	2013-08-03 22:45:59-04	100048	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01133	0.087999999999999995	0	USERS OK - 1 users currently logged in		users=1;20;50;0
921	1	6	0	1	4	0	1	2013-08-03 22:45:59-04	93156	2013-08-03 22:45:59-04	104102	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01095	0.092999999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
922	1	10	0	1	4	0	1	2013-08-03 22:45:59-04	95599	2013-08-03 22:45:59-04	105236	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0096399999999999993	0.095000000000000001	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
923	1	12	0	1	4	0	1	2013-08-03 22:45:59-04	99008	2013-08-03 22:45:59-04	111353	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01235	0.098000000000000004	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
924	1	8	0	4	4	2	1	2013-08-03 22:45:59-04	103214	2013-08-03 22:45:59-04	113641	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01043	0.10299999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
925	1	7	0	4	4	1	1	2013-08-03 22:45:59-04	106403	2013-08-03 22:45:59-04	121040	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01464	0.106	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003512s;;;0.000000 size=5237B;;;0
926	1	11	0	1	4	0	1	2013-08-03 22:45:59-04	107465	2013-08-03 22:45:59-04	130184	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022720000000000001	0.107	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010004s;;;0.000000;10.000000
927	1	13	0	1	4	0	1	2013-08-03 22:45:59-04	111964	2013-08-03 22:45:59-04	134359	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02239	0.111	0	PROCS OK: 104 processes with STATE = RSZDT		
928	1	9	0	1	4	0	1	2013-08-03 22:45:59-04	115745	2013-08-03 22:46:03-04	131854	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0161100000000003	0.115	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.044000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
929	1	4	0	1	4	0	1	2013-08-03 22:50:59-04	42397	2013-08-03 22:50:59-04	57782	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01538	0.042000000000000003	0	USERS OK - 1 users currently logged in		users=1;20;50;0
930	1	6	0	1	4	0	1	2013-08-03 22:50:59-04	49518	2013-08-03 22:50:59-04	67202	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.017680000000000001	0.049000000000000002	0	OK - load average: 0.00, 0.01, 0.00		load1=0.000;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
931	1	10	0	1	4	0	1	2013-08-03 22:50:59-04	51283	2013-08-03 22:50:59-04	71803	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.02052	0.050999999999999997	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
932	1	12	0	1	4	0	1	2013-08-03 22:50:59-04	56679	2013-08-03 22:50:59-04	77430	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.020750000000000001	0.056000000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
933	1	8	0	4	4	2	1	2013-08-03 22:50:59-04	66114	2013-08-03 22:50:59-04	88421	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.02231	0.066000000000000003	127	The command defined for service Icinga Startup Delay does not exist\n		
934	1	7	0	4	4	1	1	2013-08-03 22:50:59-04	75004	2013-08-03 22:50:59-04	94124	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.019120000000000002	0.073999999999999996	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.006 second response time		time=0.005604s;;;0.000000 size=5237B;;;0
935	1	11	0	1	4	0	1	2013-08-03 22:50:59-04	81686	2013-08-03 22:50:59-04	108497	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02681	0.081000000000000003	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.015339s;;;0.000000;10.000000
936	1	13	0	1	4	0	1	2013-08-03 22:50:59-04	85133	2013-08-03 22:50:59-04	116095	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.030960000000000001	0.085000000000000006	0	PROCS OK: 101 processes with STATE = RSZDT		
937	1	9	0	1	4	0	1	2013-08-03 22:50:59-04	91296	2013-08-03 22:51:03-04	107990	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0166899999999996	0.090999999999999998	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
938	1	4	0	1	4	0	1	2013-08-03 22:55:59-04	251492	2013-08-03 22:55:59-04	261124	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0096299999999999997	0.251	0	USERS OK - 1 users currently logged in		users=1;20;50;0
939	1	6	0	1	4	0	1	2013-08-03 22:55:59-04	254523	2013-08-03 22:55:59-04	264412	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0098899999999999995	0.254	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
940	1	10	0	1	4	0	1	2013-08-03 22:55:59-04	256363	2013-08-03 22:55:59-04	267221	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01086	0.25600000000000001	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
941	1	12	0	1	4	0	1	2013-08-03 22:55:59-04	259688	2013-08-03 22:55:59-04	270194	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01051	0.25900000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
942	1	8	0	4	4	2	1	2013-08-03 22:55:59-04	263480	2013-08-03 22:55:59-04	274613	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.011129999999999999	0.26300000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
943	1	7	0	4	4	1	1	2013-08-03 22:55:59-04	267842	2013-08-03 22:55:59-04	282187	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01435	0.26700000000000002	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003919s;;;0.000000 size=5237B;;;0
944	1	11	0	1	4	0	1	2013-08-03 22:55:59-04	269005	2013-08-03 22:55:59-04	289181	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02018	0.26800000000000002	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.008269s;;;0.000000;10.000000
945	1	13	0	1	4	0	1	2013-08-03 22:55:59-04	272811	2013-08-03 22:55:59-04	296721	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023910000000000001	0.27200000000000002	0	PROCS OK: 102 processes with STATE = RSZDT		
946	1	9	0	1	4	0	1	2013-08-03 22:55:59-04	276263	2013-08-03 22:56:03-04	293013	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01675	0.27600000000000002	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.047000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
947	1	4	0	1	4	0	1	2013-08-03 23:00:59-04	150982	2013-08-03 23:00:59-04	161002	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.010019999999999999	0.14999999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
948	1	6	0	1	4	0	1	2013-08-03 23:00:59-04	153277	2013-08-03 23:00:59-04	162932	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0096500000000000006	0.153	0	OK - load average: 0.04, 0.01, 0.00		load1=0.040;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
949	1	10	0	1	4	0	1	2013-08-03 23:00:59-04	155180	2013-08-03 23:00:59-04	166414	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01123	0.155	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
950	1	12	0	1	4	0	1	2013-08-03 23:00:59-04	156341	2013-08-03 23:00:59-04	167628	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01129	0.156	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
951	1	8	0	4	4	2	1	2013-08-03 23:00:59-04	161775	2013-08-03 23:00:59-04	173733	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01196	0.161	127	The command defined for service Icinga Startup Delay does not exist\n		
952	1	7	0	4	4	1	1	2013-08-03 23:00:59-04	165480	2013-08-03 23:00:59-04	180420	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01494	0.16500000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003440s;;;0.000000 size=5237B;;;0
953	1	11	0	1	4	0	1	2013-08-03 23:00:59-04	168524	2013-08-03 23:00:59-04	192696	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.024170000000000001	0.16800000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.013353s;;;0.000000;10.000000
954	1	13	0	1	4	0	1	2013-08-03 23:00:59-04	169415	2013-08-03 23:00:59-04	199466	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.03005	0.16900000000000001	0	PROCS OK: 100 processes with STATE = RSZDT		
955	1	9	0	1	4	0	1	2013-08-03 23:00:59-04	174386	2013-08-03 23:01:03-04	194378	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01999	0.17399999999999999	0	PING OK - Packet loss = 0%, RTA = 0.03 ms		rta=0.029000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
956	1	4	0	1	4	0	1	2013-08-03 23:05:59-04	203541	2013-08-03 23:05:59-04	214693	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01115	0.20300000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
957	1	6	0	1	4	0	1	2013-08-03 23:05:59-04	205696	2013-08-03 23:05:59-04	219273	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01358	0.20499999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
958	1	10	0	1	4	0	1	2013-08-03 23:05:59-04	208152	2013-08-03 23:05:59-04	222489	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01434	0.20799999999999999	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
959	1	12	0	1	4	0	1	2013-08-03 23:05:59-04	213509	2013-08-03 23:05:59-04	227519	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01401	0.21299999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
960	1	8	0	4	4	2	1	2013-08-03 23:05:59-04	220170	2013-08-03 23:05:59-04	239976	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.019810000000000001	0.22	127	The command defined for service Icinga Startup Delay does not exist\n		
961	1	7	0	4	4	1	1	2013-08-03 23:05:59-04	223374	2013-08-03 23:05:59-04	245889	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.022519999999999998	0.223	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.009 second response time		time=0.008830s;;;0.000000 size=5237B;;;0
962	1	11	0	1	4	0	1	2013-08-03 23:05:59-04	224926	2013-08-03 23:05:59-04	255069	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.03014	0.224	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.013411s;;;0.000000;10.000000
963	1	13	0	1	4	0	1	2013-08-03 23:05:59-04	228246	2013-08-03 23:05:59-04	264406	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.036159999999999998	0.22800000000000001	0	PROCS OK: 109 processes with STATE = RSZDT		
964	1	9	0	1	4	0	1	2013-08-03 23:05:59-04	231614	2013-08-03 23:06:03-04	259826	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0282099999999996	0.23100000000000001	0	PING OK - Packet loss = 0%, RTA = 0.32 ms		rta=0.323000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
965	1	6	0	1	4	0	1	2013-08-03 23:10:59-04	140373	2013-08-03 23:10:59-04	150607	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01023	0.14000000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
966	1	10	0	1	4	0	1	2013-08-03 23:10:59-04	142281	2013-08-03 23:10:59-04	154916	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01264	0.14199999999999999	0	DISK OK - free space: / 14184 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
967	1	4	0	1	4	0	1	2013-08-03 23:10:59-04	137580	2013-08-03 23:10:59-04	155267	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.017690000000000001	0.13700000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
968	1	12	0	1	4	0	1	2013-08-03 23:10:59-04	144914	2013-08-03 23:10:59-04	158676	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01376	0.14399999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
969	1	8	0	4	4	2	1	2013-08-03 23:10:59-04	148322	2013-08-03 23:10:59-04	166387	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.018069999999999999	0.14799999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
970	1	7	0	4	4	1	1	2013-08-03 23:10:59-04	152562	2013-08-03 23:10:59-04	174764	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.022200000000000001	0.152	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.010 second response time		time=0.010116s;;;0.000000 size=5237B;;;0
971	1	11	0	1	4	0	1	2013-08-03 23:10:59-04	157318	2013-08-03 23:10:59-04	195633	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.038309999999999997	0.157	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.027138s;;;0.000000;10.000000
972	1	13	0	1	4	0	1	2013-08-03 23:10:59-04	160183	2013-08-03 23:10:59-04	209698	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.049520000000000002	0.16	0	PROCS OK: 101 processes with STATE = RSZDT		
973	1	9	0	1	4	0	1	2013-08-03 23:10:59-04	164760	2013-08-03 23:11:03-04	194791	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.03003	0.16400000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.050000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
974	1	6	0	1	4	0	1	2013-08-03 23:15:59-04	69134	2013-08-03 23:15:59-04	79982	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01085	0.069000000000000006	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
975	1	10	0	1	4	0	1	2013-08-03 23:15:59-04	73368	2013-08-03 23:15:59-04	83383	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010019999999999999	0.072999999999999995	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
976	1	4	0	1	4	0	1	2013-08-03 23:15:59-04	75345	2013-08-03 23:15:59-04	86928	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01158	0.074999999999999997	0	USERS OK - 1 users currently logged in		users=1;20;50;0
977	1	12	0	1	4	0	1	2013-08-03 23:15:59-04	78741	2013-08-03 23:15:59-04	88112	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.0093699999999999999	0.078	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
978	1	8	0	4	4	2	1	2013-08-03 23:15:59-04	82367	2013-08-03 23:15:59-04	99235	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01687	0.082000000000000003	127	The command defined for service Icinga Startup Delay does not exist\n		
979	1	7	0	4	4	1	1	2013-08-03 23:15:59-04	85928	2013-08-03 23:15:59-04	106755	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.020830000000000001	0.085000000000000006	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.001 second response time		time=0.000794s;;;0.000000 size=5237B;;;0
980	1	11	0	1	4	0	1	2013-08-03 23:15:59-04	89044	2013-08-03 23:15:59-04	116689	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.027640000000000001	0.088999999999999996	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.015591s;;;0.000000;10.000000
981	1	13	0	1	4	0	1	2013-08-03 23:15:59-04	90576	2013-08-03 23:15:59-04	121778	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.031199999999999999	0.089999999999999997	0	PROCS OK: 101 processes with STATE = RSZDT		
982	1	9	0	1	4	0	1	2013-08-03 23:15:59-04	95754	2013-08-03 23:16:03-04	118149	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0224000000000002	0.095000000000000001	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
983	1	6	0	1	4	0	1	2013-08-03 23:20:59-04	229756	2013-08-03 23:20:59-04	240451	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01069	0.22900000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
984	1	10	0	1	4	0	1	2013-08-03 23:20:59-04	233728	2013-08-03 23:20:59-04	243766	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01004	0.23300000000000001	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
985	1	4	0	1	4	0	1	2013-08-03 23:20:59-04	235642	2013-08-03 23:20:59-04	244778	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0091400000000000006	0.23499999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
986	1	12	0	1	4	0	1	2013-08-03 23:20:59-04	239148	2013-08-03 23:20:59-04	249996	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01085	0.23899999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
987	1	8	0	4	4	2	1	2013-08-03 23:20:59-04	242810	2013-08-03 23:20:59-04	254136	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01133	0.24199999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
988	1	7	0	4	4	1	1	2013-08-03 23:20:59-04	245680	2013-08-03 23:20:59-04	261917	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.016240000000000001	0.245	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.004042s;;;0.000000 size=5237B;;;0
989	1	11	0	1	4	0	1	2013-08-03 23:20:59-04	248533	2013-08-03 23:20:59-04	271656	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.023120000000000002	0.248	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011072s;;;0.000000;10.000000
990	1	13	0	1	4	0	1	2013-08-03 23:20:59-04	252189	2013-08-03 23:20:59-04	275298	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023109999999999999	0.252	0	PROCS OK: 102 processes with STATE = RSZDT		
991	1	9	0	1	4	0	1	2013-08-03 23:20:59-04	255849	2013-08-03 23:21:03-04	271684	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0158399999999999	0.255	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.047000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
992	1	6	0	1	4	0	1	2013-08-03 23:25:59-04	127245	2013-08-03 23:25:59-04	141090	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.013849999999999999	0.127	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
993	1	10	0	1	4	0	1	2013-08-03 23:25:59-04	132037	2013-08-03 23:25:59-04	146348	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01431	0.13200000000000001	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
994	1	4	0	1	4	0	1	2013-08-03 23:25:59-04	134385	2013-08-03 23:25:59-04	153286	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0189	0.13400000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
995	1	12	0	1	4	0	1	2013-08-03 23:25:59-04	138521	2013-08-03 23:25:59-04	158945	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.020420000000000001	0.13800000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
996	1	8	0	4	4	2	1	2013-08-03 23:25:59-04	144240	2013-08-03 23:25:59-04	164318	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.020080000000000001	0.14399999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
997	1	7	0	4	4	1	1	2013-08-03 23:25:59-04	150783	2013-08-03 23:25:59-04	175548	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.02477	0.14999999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.004480s;;;0.000000 size=5237B;;;0
998	1	13	0	1	4	0	1	2013-08-03 23:25:59-04	160762	2013-08-03 23:25:59-04	211677	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.05092	0.16	0	PROCS OK: 109 processes with STATE = RSZDT		
999	1	11	0	1	4	0	1	2013-08-03 23:25:59-04	154638	2013-08-03 23:25:59-04	214792	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.060150000000000002	0.154	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.045394s;;;0.000000;10.000000
1000	1	9	0	1	4	0	1	2013-08-03 23:25:59-04	167664	2013-08-03 23:26:03-04	199512	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0318500000000004	0.16700000000000001	0	PING OK - Packet loss = 0%, RTA = 0.09 ms		rta=0.087000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1001	1	6	0	1	4	0	1	2013-08-04 08:34:19-04	243756	2013-08-04 08:34:19-04	254940	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.011180000000000001	0.24299999999999999	0	OK - load average: 0.00, 0.01, 0.00		load1=0.000;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1002	1	10	0	1	4	0	1	2013-08-04 08:34:19-04	247716	2013-08-04 08:34:19-04	260622	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01291	0.247	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2626MB;14167;15938;0;17709
1003	1	4	0	1	4	0	1	2013-08-04 08:34:19-04	249840	2013-08-04 08:34:19-04	261667	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01183	0.249	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1004	1	12	0	1	4	0	1	2013-08-04 08:34:19-04	253222	2013-08-04 08:34:19-04	267000	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.013780000000000001	0.253	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1005	1	8	0	4	4	2	1	2013-08-04 08:34:19-04	259371	2013-08-04 08:34:19-04	271887	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01252	0.25900000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1006	1	7	0	4	4	1	1	2013-08-04 08:34:19-04	262518	2013-08-04 08:34:19-04	279700	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.017180000000000001	0.26200000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003623s;;;0.000000 size=5237B;;;0
1007	1	11	0	1	4	0	1	2013-08-04 08:34:19-04	269655	2013-08-04 08:34:19-04	292582	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022929999999999999	0.26900000000000002	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011573s;;;0.000000;10.000000
1008	1	13	0	1	4	0	1	2013-08-04 08:34:19-04	265393	2013-08-04 08:34:19-04	293981	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.028590000000000001	0.26500000000000001	0	PROCS OK: 102 processes with STATE = RSZDT		
1009	1	9	0	1	4	0	1	2013-08-04 08:34:19-04	272807	2013-08-04 08:34:23-04	291150	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0183400000000002	0.27200000000000002	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.042000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1010	1	6	0	1	4	0	1	2013-08-04 08:39:19-04	127860	2013-08-04 08:39:19-04	137883	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010019999999999999	0.127	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1011	1	10	0	1	4	0	1	2013-08-04 08:39:19-04	130795	2013-08-04 08:39:19-04	141680	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01089	0.13	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2626MB;14167;15938;0;17709
1012	1	4	0	1	4	0	1	2013-08-04 08:39:19-04	132657	2013-08-04 08:39:19-04	143031	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.010370000000000001	0.13200000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1013	1	12	0	1	4	0	1	2013-08-04 08:39:19-04	136792	2013-08-04 08:39:19-04	150137	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.013350000000000001	0.13600000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1014	1	8	0	4	4	2	1	2013-08-04 08:39:19-04	140757	2013-08-04 08:39:19-04	158016	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.017260000000000001	0.14000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1015	1	7	0	4	4	1	1	2013-08-04 08:39:19-04	144243	2013-08-04 08:39:19-04	161571	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.017330000000000002	0.14399999999999999	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.004434s;;;0.000000 size=5237B;;;0
1016	1	11	0	1	4	0	1	2013-08-04 08:39:19-04	145199	2013-08-04 08:39:19-04	171454	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.026259999999999999	0.14499999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.012082s;;;0.000000;10.000000
1017	1	13	0	1	4	0	1	2013-08-04 08:39:19-04	151104	2013-08-04 08:39:19-04	176300	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.0252	0.151	0	PROCS OK: 103 processes with STATE = RSZDT		
1018	1	9	0	1	4	0	1	2013-08-04 08:39:19-04	155381	2013-08-04 08:39:23-04	173098	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0177199999999997	0.155	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.044000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1019	1	6	0	1	4	0	1	2013-08-04 08:44:19-04	208475	2013-08-04 08:44:19-04	218322	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0098499999999999994	0.20799999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1020	1	10	0	1	4	0	1	2013-08-04 08:44:19-04	211655	2013-08-04 08:44:19-04	221891	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010240000000000001	0.21099999999999999	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2626MB;14167;15938;0;17709
1021	1	4	0	1	4	0	1	2013-08-04 08:44:19-04	213969	2013-08-04 08:44:19-04	224624	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01065	0.21299999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1022	1	12	0	1	4	0	1	2013-08-04 08:44:19-04	217222	2013-08-04 08:44:19-04	228030	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01081	0.217	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1023	1	8	0	4	4	2	1	2013-08-04 08:44:19-04	220681	2013-08-04 08:44:19-04	236746	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.016070000000000001	0.22	127	The command defined for service Icinga Startup Delay does not exist\n		
1024	1	7	0	4	4	1	1	2013-08-04 08:44:19-04	225350	2013-08-04 08:44:19-04	240043	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01469	0.22500000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003462s;;;0.000000 size=5237B;;;0
1025	1	11	0	1	4	0	1	2013-08-04 08:44:19-04	226966	2013-08-04 08:44:19-04	250407	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.023439999999999999	0.22600000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.011575s;;;0.000000;10.000000
1026	1	13	0	1	4	0	1	2013-08-04 08:44:19-04	230442	2013-08-04 08:44:19-04	254267	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023820000000000001	0.23000000000000001	0	PROCS OK: 103 processes with STATE = RSZDT		
1027	1	9	0	1	4	0	1	2013-08-04 08:44:19-04	233635	2013-08-04 08:44:23-04	248737	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0151000000000003	0.23300000000000001	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.036000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1028	1	6	0	1	4	0	1	2013-08-04 08:49:19-04	148951	2013-08-04 08:49:19-04	160448	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0115	0.14799999999999999	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1029	1	10	0	1	4	0	1	2013-08-04 08:49:19-04	153126	2013-08-04 08:49:19-04	164621	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0115	0.153	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
1030	1	4	0	1	4	0	1	2013-08-04 08:49:19-04	155537	2013-08-04 08:49:19-04	165858	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.010319999999999999	0.155	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1031	1	12	0	1	4	0	1	2013-08-04 08:49:19-04	159326	2013-08-04 08:49:19-04	171541	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01222	0.159	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1032	1	8	0	4	4	2	1	2013-08-04 08:49:19-04	163605	2013-08-04 08:49:19-04	178649	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01504	0.16300000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1033	1	7	0	4	4	1	1	2013-08-04 08:49:19-04	167434	2013-08-04 08:49:19-04	182321	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01489	0.16700000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.005 second response time		time=0.004687s;;;0.000000 size=5237B;;;0
1034	1	11	0	1	4	0	1	2013-08-04 08:49:19-04	170476	2013-08-04 08:49:19-04	188356	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.01788	0.17000000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.007345s;;;0.000000;10.000000
1035	1	13	0	1	4	0	1	2013-08-04 08:49:19-04	172651	2013-08-04 08:49:19-04	206825	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.034169999999999999	0.17199999999999999	0	PROCS OK: 108 processes with STATE = RSZDT		
1036	1	9	0	1	4	0	1	2013-08-04 08:49:19-04	178366	2013-08-04 08:49:23-04	194253	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0158899999999997	0.17799999999999999	0	PING OK - Packet loss = 0%, RTA = 0.06 ms		rta=0.062000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1037	1	6	0	1	4	0	1	2013-08-04 08:54:19-04	104431	2013-08-04 08:54:19-04	115599	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.011169999999999999	0.104	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1038	1	10	0	1	4	0	1	2013-08-04 08:54:19-04	108487	2013-08-04 08:54:19-04	118860	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010370000000000001	0.108	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
1039	1	4	0	1	4	0	1	2013-08-04 08:54:19-04	110566	2013-08-04 08:54:19-04	119739	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0091699999999999993	0.11	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1040	1	12	0	1	4	0	1	2013-08-04 08:54:19-04	114218	2013-08-04 08:54:19-04	124254	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01004	0.114	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1041	1	8	0	4	4	2	1	2013-08-04 08:54:19-04	117993	2013-08-04 08:54:19-04	129288	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01129	0.11700000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1042	1	7	0	4	4	1	1	2013-08-04 08:54:19-04	121088	2013-08-04 08:54:19-04	137114	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.016029999999999999	0.121	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.006 second response time		time=0.005935s;;;0.000000 size=5237B;;;0
1043	1	11	0	1	4	0	1	2013-08-04 08:54:19-04	123233	2013-08-04 08:54:19-04	146703	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.023470000000000001	0.123	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.012902s;;;0.000000;10.000000
1044	1	13	0	1	4	0	1	2013-08-04 08:54:19-04	127658	2013-08-04 08:54:19-04	151975	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.024320000000000001	0.127	0	PROCS OK: 103 processes with STATE = RSZDT		
1045	1	9	0	1	4	0	1	2013-08-04 08:54:19-04	131889	2013-08-04 08:54:23-04	145082	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0131899999999998	0.13100000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.052000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1046	1	6	0	1	4	0	1	2013-08-04 08:59:19-04	66840	2013-08-04 08:59:19-04	77726	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01089	0.066000000000000003	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1047	1	10	0	1	4	0	1	2013-08-04 08:59:19-04	70811	2013-08-04 08:59:19-04	80985	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01017	0.070000000000000007	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2626MB;14167;15938;0;17709
1048	1	4	0	1	4	0	1	2013-08-04 08:59:19-04	72267	2013-08-04 08:59:19-04	84269	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.012	0.071999999999999995	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1049	1	12	0	1	4	0	1	2013-08-04 08:59:19-04	76461	2013-08-04 08:59:19-04	87379	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.010919999999999999	0.075999999999999998	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1050	1	8	0	4	4	2	1	2013-08-04 08:59:19-04	79941	2013-08-04 08:59:19-04	95002	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01506	0.079000000000000001	127	The command defined for service Icinga Startup Delay does not exist\n		
1051	1	7	0	4	4	1	1	2013-08-04 08:59:19-04	83113	2013-08-04 08:59:19-04	98048	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01494	0.083000000000000004	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.004067s;;;0.000000 size=5237B;;;0
1052	1	11	0	1	4	0	1	2013-08-04 08:59:19-04	86147	2013-08-04 08:59:19-04	103134	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.016990000000000002	0.085999999999999993	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.005971s;;;0.000000;10.000000
1053	1	13	0	1	4	0	1	2013-08-04 08:59:19-04	89182	2013-08-04 08:59:19-04	110797	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.021610000000000001	0.088999999999999996	0	PROCS OK: 103 processes with STATE = RSZDT		
1054	1	9	0	1	4	0	1	2013-08-04 08:59:19-04	92164	2013-08-04 08:59:23-04	107916	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0157499999999997	0.091999999999999998	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.040000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1055	1	10	0	1	4	0	1	2013-08-04 09:04:19-04	169261	2013-08-04 09:04:19-04	180128	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010869999999999999	0.16900000000000001	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2626MB;14167;15938;0;17709
1056	1	6	0	1	4	0	1	2013-08-04 09:04:19-04	165660	2013-08-04 09:04:19-04	180642	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01498	0.16500000000000001	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1057	1	4	0	1	4	0	1	2013-08-04 09:04:19-04	171027	2013-08-04 09:04:19-04	181926	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0109	0.17000000000000001	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1058	1	12	0	1	4	0	1	2013-08-04 09:04:19-04	174187	2013-08-04 09:04:19-04	186018	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01183	0.17399999999999999	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1059	1	8	0	4	4	2	1	2013-08-04 09:04:19-04	179103	2013-08-04 09:04:19-04	203416	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.024309999999999998	0.17899999999999999	127	The command defined for service Icinga Startup Delay does not exist\n		
1060	1	11	0	1	4	0	1	2013-08-04 09:04:19-04	186882	2013-08-04 09:04:19-04	218849	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.031969999999999998	0.186	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.012937s;;;0.000000;10.000000
1061	1	7	0	4	4	1	1	2013-08-04 09:04:19-04	183560	2013-08-04 09:04:19-04	223840	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.040280000000000003	0.183	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.028 second response time		time=0.027939s;;;0.000000 size=5237B;;;0
1062	1	13	0	1	4	0	1	2013-08-04 09:04:19-04	188597	2013-08-04 09:04:19-04	232204	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.043610000000000003	0.188	0	PROCS OK: 101 processes with STATE = RSZDT		
1063	1	9	0	1	4	0	1	2013-08-04 09:04:19-04	192820	2013-08-04 09:04:23-04	214985	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.02217	0.192	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.039000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1064	1	10	0	1	4	0	1	2013-08-04 09:09:19-04	88612	2013-08-04 09:09:19-04	97127	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.0085100000000000002	0.087999999999999995	0	DISK OK - free space: / 14183 MB (84% inode=90%):		/=2625MB;14167;15938;0;17709
1065	1	6	0	1	4	0	1	2013-08-04 09:09:19-04	90876	2013-08-04 09:09:19-04	100645	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.0097699999999999992	0.089999999999999997	0	OK - load average: 0.02, 0.03, 0.00		load1=0.020;5.000;10.000;0; load5=0.030;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1066	1	4	0	1	4	0	1	2013-08-04 09:09:19-04	92610	2013-08-04 09:09:19-04	101807	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0091999999999999998	0.091999999999999998	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1067	1	12	0	1	4	0	1	2013-08-04 09:09:19-04	95975	2013-08-04 09:09:19-04	108037	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01206	0.095000000000000001	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1068	1	8	0	4	4	2	1	2013-08-04 09:09:19-04	99682	2013-08-04 09:09:19-04	112301	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.012619999999999999	0.099000000000000005	127	The command defined for service Icinga Startup Delay does not exist\n		
1069	1	11	0	1	4	0	1	2013-08-04 09:09:19-04	103034	2013-08-04 09:09:19-04	120859	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.017829999999999999	0.10299999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.006138s;;;0.000000;10.000000
1070	1	7	0	4	4	1	1	2013-08-04 09:09:19-04	104030	2013-08-04 09:09:19-04	122872	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.018839999999999999	0.104	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.006 second response time		time=0.006397s;;;0.000000 size=5237B;;;0
1071	1	13	0	1	4	0	1	2013-08-04 09:09:19-04	108695	2013-08-04 09:09:19-04	131929	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023230000000000001	0.108	0	PROCS OK: 103 processes with STATE = RSZDT		
1072	1	9	0	1	4	0	1	2013-08-04 09:09:19-04	111919	2013-08-04 09:09:23-04	126694	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01478	0.111	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1073	1	6	0	1	4	0	1	2013-08-04 09:14:19-04	25882	2013-08-04 09:14:19-04	36344	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.010460000000000001	0.025000000000000001	0	OK - load average: 0.01, 0.04, 0.00		load1=0.010;5.000;10.000;0; load5=0.040;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1074	1	10	0	1	4	0	1	2013-08-04 09:14:19-04	23927	2013-08-04 09:14:19-04	36932	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.013010000000000001	0.023	0	DISK OK - free space: / 14175 MB (84% inode=90%):		/=2633MB;14167;15938;0;17709
1075	1	4	0	1	4	0	1	2013-08-04 09:14:19-04	27282	2013-08-04 09:14:19-04	39458	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01218	0.027	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1076	1	12	0	1	4	0	1	2013-08-04 09:14:19-04	28014	2013-08-04 09:14:19-04	42848	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.014829999999999999	0.027	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1077	1	8	0	4	4	2	1	2013-08-04 09:14:19-04	35133	2013-08-04 09:14:19-04	53230	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.018100000000000002	0.035000000000000003	127	The command defined for service Icinga Startup Delay does not exist\n		
1078	1	7	0	4	4	1	1	2013-08-04 09:14:19-04	41799	2013-08-04 09:14:19-04	60071	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.018270000000000002	0.041000000000000002	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.002 second response time		time=0.001822s;;;0.000000 size=5237B;;;0
1079	1	11	0	1	4	0	1	2013-08-04 09:14:19-04	38336	2013-08-04 09:14:19-04	76749	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.03841	0.037999999999999999	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.026959s;;;0.000000;10.000000
1080	1	13	0	1	4	0	1	2013-08-04 09:14:19-04	44756	2013-08-04 09:14:19-04	113608	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.068849999999999995	0.043999999999999997	0	PROCS OK: 99 processes with STATE = RSZDT		
1081	1	9	0	1	4	0	1	2013-08-04 09:14:19-04	48329	2013-08-04 09:14:23-04	77782	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0294499999999998	0.048000000000000001	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.046000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1082	1	10	0	1	4	0	1	2013-08-04 09:19:19-04	213050	2013-08-04 09:19:19-04	226800	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01375	0.21299999999999999	0	DISK OK - free space: / 14175 MB (84% inode=90%):		/=2634MB;14167;15938;0;17709
1083	1	6	0	1	4	0	1	2013-08-04 09:19:19-04	208229	2013-08-04 09:19:19-04	227152	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.018919999999999999	0.20799999999999999	0	OK - load average: 0.11, 0.05, 0.01		load1=0.110;5.000;10.000;0; load5=0.050;4.000;6.000;0; load15=0.010;3.000;4.000;0;
1084	1	4	0	1	4	0	1	2013-08-04 09:19:19-04	215486	2013-08-04 09:19:19-04	228122	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01264	0.215	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1085	1	12	0	1	4	0	1	2013-08-04 09:19:19-04	221442	2013-08-04 09:19:19-04	234055	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01261	0.221	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1086	1	8	0	4	4	2	1	2013-08-04 09:19:19-04	224029	2013-08-04 09:19:19-04	241461	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.017430000000000001	0.224	127	The command defined for service Icinga Startup Delay does not exist\n		
1087	1	7	0	4	4	1	1	2013-08-04 09:19:19-04	229119	2013-08-04 09:19:19-04	243287	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.01417	0.22900000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.004 second response time		time=0.003589s;;;0.000000 size=5237B;;;0
1088	1	11	0	1	4	0	1	2013-08-04 09:19:19-04	232673	2013-08-04 09:19:19-04	255477	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.022800000000000001	0.23200000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010649s;;;0.000000;10.000000
1089	1	13	0	1	4	0	1	2013-08-04 09:19:19-04	236619	2013-08-04 09:19:19-04	260254	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.023640000000000001	0.23599999999999999	0	PROCS OK: 102 processes with STATE = RSZDT		
1090	1	9	0	1	4	0	1	2013-08-04 09:19:19-04	240167	2013-08-04 09:19:23-04	256006	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.0158399999999999	0.23999999999999999	0	PING OK - Packet loss = 0%, RTA = 0.05 ms		rta=0.047000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1091	1	10	0	1	4	0	1	2013-08-04 09:24:19-04	144382	2013-08-04 09:24:19-04	157499	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.01312	0.14399999999999999	0	DISK OK - free space: / 14175 MB (84% inode=90%):		/=2634MB;14167;15938;0;17709
1092	1	6	0	1	4	0	1	2013-08-04 09:24:19-04	148669	2013-08-04 09:24:19-04	161510	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.012840000000000001	0.14799999999999999	0	OK - load average: 0.00, 0.01, 0.00		load1=0.000;5.000;10.000;0; load5=0.010;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1093	1	4	0	1	4	0	1	2013-08-04 09:24:19-04	150250	2013-08-04 09:24:19-04	162522	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.01227	0.14999999999999999	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1094	1	12	0	1	4	0	1	2013-08-04 09:24:19-04	156070	2013-08-04 09:24:19-04	168615	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01255	0.156	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1095	1	8	0	4	4	2	1	2013-08-04 09:24:19-04	160156	2013-08-04 09:24:19-04	175895	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.015740000000000001	0.16	127	The command defined for service Icinga Startup Delay does not exist\n		
1096	1	7	0	4	4	1	1	2013-08-04 09:24:19-04	163374	2013-08-04 09:24:19-04	179406	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.016029999999999999	0.16300000000000001	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.003 second response time		time=0.003393s;;;0.000000 size=5237B;;;0
1097	1	11	0	1	4	0	1	2013-08-04 09:24:19-04	165877	2013-08-04 09:24:19-04	188107	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.02223	0.16500000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.010872s;;;0.000000;10.000000
1098	1	13	0	1	4	0	1	2013-08-04 09:24:19-04	169290	2013-08-04 09:24:19-04	194483	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.025190000000000001	0.16900000000000001	0	PROCS OK: 102 processes with STATE = RSZDT		
1099	1	9	0	1	4	0	1	2013-08-04 09:24:19-04	172848	2013-08-04 09:24:23-04	190069	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01722	0.17199999999999999	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.043000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
1100	1	10	0	1	4	0	1	2013-08-04 09:29:19-04	85477	2013-08-04 09:29:19-04	95848	22	20%!10%!/	/usr/lib64/nagios/plugins/check_disk -w 20% -c 10% -p /	60	0	0.010370000000000001	0.085000000000000006	0	DISK OK - free space: / 14175 MB (84% inode=90%):		/=2634MB;14167;15938;0;17709
1101	1	6	0	1	4	0	1	2013-08-04 09:29:19-04	86376	2013-08-04 09:29:19-04	96982	23	5.0,4.0,3.0!10.0,6.0,4.0	/usr/lib64/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0	60	0	0.01061	0.085999999999999993	0	OK - load average: 0.00, 0.00, 0.00		load1=0.000;5.000;10.000;0; load5=0.000;4.000;6.000;0; load15=0.000;3.000;4.000;0;
1102	1	4	0	1	4	0	1	2013-08-04 09:29:19-04	90146	2013-08-04 09:29:19-04	100034	5	20!50	/usr/lib64/nagios/plugins/check_users -w 20 -c 50	60	0	0.0098899999999999995	0.089999999999999997	0	USERS OK - 1 users currently logged in		users=1;20;50;0
1103	1	12	0	1	4	0	1	2013-08-04 09:29:19-04	91507	2013-08-04 09:29:19-04	103271	26	20!10	/usr/lib64/nagios/plugins/check_swap -w 20 -c 10	60	0	0.01176	0.090999999999999998	0	SWAP OK - 100% free (1983 MB out of 1983 MB)		swap=1983MB;0;0;0;1983
1104	1	8	0	4	4	2	1	2013-08-04 09:29:19-04	94073	2013-08-04 09:29:19-04	106840	20		/usr/lib64/nagios/plugins/check_dummy 0 "Icinga started with $((1375500015-1375500015)) seconds delay | delay=$((1375500015-1375500015))"	60	0	0.01277	0.094	127	The command defined for service Icinga Startup Delay does not exist\n		
1105	1	7	0	4	4	1	1	2013-08-04 09:29:19-04	97921	2013-08-04 09:29:19-04	113101	19		/usr/lib64/nagios/plugins/check_http -I 127.0.0.1 	60	0	0.015180000000000001	0.097000000000000003	1	HTTP WARNING: HTTP/1.1 403 Forbidden - 5237 bytes in 0.002 second response time		time=0.002460s;;;0.000000 size=5237B;;;0
1106	1	11	0	1	4	0	1	2013-08-04 09:29:19-04	100751	2013-08-04 09:29:19-04	121804	32		/usr/lib64/nagios/plugins/check_ssh  127.0.0.1	60	0	0.021049999999999999	0.10000000000000001	0	SSH OK - OpenSSH_5.3 (protocol 2.0)		time=0.009759s;;;0.000000;10.000000
1107	1	13	0	1	4	0	1	2013-08-04 09:29:19-04	103956	2013-08-04 09:29:19-04	126763	25	250!400!RSZDT	/usr/lib64/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT	60	0	0.02281	0.10299999999999999	0	PROCS OK: 101 processes with STATE = RSZDT		
1108	1	9	0	1	4	0	1	2013-08-04 09:29:19-04	107499	2013-08-04 09:29:23-04	122884	28	100.0,20%!500.0,60%	/usr/lib64/nagios/plugins/check_ping -H 127.0.0.1 -w 100.0,20% -c 500.0,60% -p 5	60	0	4.01539	0.107	0	PING OK - Packet loss = 0%, RTA = 0.04 ms		rta=0.040000ms;100.000000;500.000000;0.000000 pl=0%;20;60;0
\.


--
-- Data for Name: icinga_servicegroup_members; Type: TABLE DATA; Schema: public; Owner: icinga
--

COPY icinga_servicegroup_members (servicegroup_member_id, instance_id, servicegroup_id, service_object_id) FROM stdin;
\.


--
-- Data for Name: icinga_servicegroups; Type: TABLE DATA; Schema: public; Owner: icinga
--

COPY icinga_servicegroups (servicegroup_id, instance_id, config_type, servicegroup_object_id, alias) FROM stdin;
\.


--
-- Data for Name: icinga_services; Type: TABLE DATA; Schema: public; Owner: icinga
--

COPY icinga_services (service_id, instance_id, config_type, host_object_id, service_object_id, display_name, check_command_object_id, check_command_args, eventhandler_command_object_id, eventhandler_command_args, notification_timeperiod_object_id, check_timeperiod_object_id, failure_prediction_options, check_interval, retry_interval, max_check_attempts, first_notification_delay, notification_interval, notify_on_warning, notify_on_unknown, notify_on_critical, notify_on_recovery, notify_on_flapping, notify_on_downtime, stalk_on_ok, stalk_on_warning, stalk_on_unknown, stalk_on_critical, is_volatile, flap_detection_enabled, flap_detection_on_ok, flap_detection_on_warning, flap_detection_on_unknown, flap_detection_on_critical, low_flap_threshold, high_flap_threshold, process_performance_data, freshness_checks_enabled, freshness_threshold, passive_checks_enabled, event_handler_enabled, active_checks_enabled, retain_status_information, retain_nonstatus_information, notifications_enabled, obsess_over_service, failure_prediction_enabled, notes, notes_url, action_url, icon_image, icon_image_alt) FROM stdin;
1	1	1	1	6	Current Load	23	5.0,4.0,3.0!10.0,6.0,4.0	0		2	2		5	1	4	0	60	1	1	1	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	1	0	0	1	1	1	1	1	1	1	1					
2	1	1	1	4	Current Users	5	20!50	0		2	2		5	1	4	0	60	1	1	1	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	1	0	0	1	1	1	1	1	1	1	1					
3	1	1	1	7	HTTP	19		0		2	2		5	1	4	0	60	1	1	1	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	1	0	0	1	1	1	1	1	0	1	1					
4	1	1	1	8	Icinga Startup Delay	20		0		2	2		5	1	4	0	60	1	1	1	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	1	0	0	1	1	1	1	1	0	1	1					
5	1	1	1	9	PING	28	100.0,20%!500.0,60%	0		2	2		5	1	4	0	60	1	1	1	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	1	0	0	1	1	1	1	1	1	1	1					
6	1	1	1	10	Root Partition	22	20%!10%!/	0		2	2		5	1	4	0	60	1	1	1	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	1	0	0	1	1	1	1	1	1	1	1					
7	1	1	1	11	SSH	32		0		2	2		5	1	4	0	60	1	1	1	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	1	0	0	1	1	1	1	1	0	1	1					
8	1	1	1	12	Swap Usage	26	20!10	0		2	2		5	1	4	0	60	1	1	1	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	1	0	0	1	1	1	1	1	1	1	1					
9	1	1	1	13	Total Processes	25	250!400!RSZDT	0		2	2		5	1	4	0	60	1	1	1	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	1	0	0	1	1	1	1	1	1	1	1					
\.


--
-- Name: pk_host_id; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_hosts
    ADD CONSTRAINT pk_host_id PRIMARY KEY (host_id);


--
-- Name: pk_hostgroup_id; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_hostgroups
    ADD CONSTRAINT pk_hostgroup_id PRIMARY KEY (hostgroup_id);


--
-- Name: pk_hostgroup_member_id; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_hostgroup_members
    ADD CONSTRAINT pk_hostgroup_member_id PRIMARY KEY (hostgroup_member_id);


--
-- Name: pk_object_id; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_objects
    ADD CONSTRAINT pk_object_id PRIMARY KEY (object_id);


--
-- Name: pk_service_id; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_services
    ADD CONSTRAINT pk_service_id PRIMARY KEY (service_id);


--
-- Name: pk_servicecheck_id; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_servicechecks
    ADD CONSTRAINT pk_servicecheck_id PRIMARY KEY (servicecheck_id);


--
-- Name: pk_servicegroup_id; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_servicegroups
    ADD CONSTRAINT pk_servicegroup_id PRIMARY KEY (servicegroup_id);


--
-- Name: pk_servicegroup_member_id; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_servicegroup_members
    ADD CONSTRAINT pk_servicegroup_member_id PRIMARY KEY (servicegroup_member_id);


--
-- Name: uq_hostgroups; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_hostgroups
    ADD CONSTRAINT uq_hostgroups UNIQUE (instance_id, hostgroup_object_id);


--
-- Name: uq_hosts; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_hosts
    ADD CONSTRAINT uq_hosts UNIQUE (instance_id, config_type, host_object_id);


--
-- Name: uq_servicegroups; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_servicegroups
    ADD CONSTRAINT uq_servicegroups UNIQUE (instance_id, config_type, servicegroup_object_id);


--
-- Name: uq_services; Type: CONSTRAINT; Schema: public; Owner: icinga; Tablespace: 
--

ALTER TABLE ONLY icinga_services
    ADD CONSTRAINT uq_services UNIQUE (instance_id, config_type, service_object_id);


--
-- Name: hostgroup_members_i_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX hostgroup_members_i_id_idx ON icinga_hostgroup_members USING btree (instance_id);


--
-- Name: hostgroups_i_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX hostgroups_i_id_idx ON icinga_hostgroups USING btree (instance_id);


--
-- Name: hosts_host_object_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX hosts_host_object_id_idx ON icinga_hosts USING btree (host_object_id);


--
-- Name: hosts_i_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX hosts_i_id_idx ON icinga_hosts USING btree (instance_id);


--
-- Name: hstgrpmbrs_hgid_hoid; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX hstgrpmbrs_hgid_hoid ON icinga_hostgroup_members USING btree (hostgroup_id, host_object_id);


--
-- Name: icinga_objects_i; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX icinga_objects_i ON icinga_objects USING btree (objecttype_id, name1, name2);


--
-- Name: objects_inst_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX objects_inst_id_idx ON icinga_objects USING btree (instance_id);


--
-- Name: objects_name1_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX objects_name1_idx ON icinga_objects USING btree (name1);


--
-- Name: objects_name2_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX objects_name2_idx ON icinga_objects USING btree (name2);


--
-- Name: objects_objtype_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX objects_objtype_id_idx ON icinga_objects USING btree (objecttype_id);


--
-- Name: servicechecks_i_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX servicechecks_i_id_idx ON icinga_servicechecks USING btree (instance_id);


--
-- Name: servicechecks_time_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX servicechecks_time_id_idx ON icinga_servicechecks USING btree (start_time);


--
-- Name: servicechks_s_obj_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX servicechks_s_obj_id_idx ON icinga_servicechecks USING btree (service_object_id);


--
-- Name: servicegroup_members_i_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX servicegroup_members_i_id_idx ON icinga_servicegroup_members USING btree (instance_id);


--
-- Name: servicegroups_i_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX servicegroups_i_id_idx ON icinga_servicegroups USING btree (instance_id);


--
-- Name: services_combined_object_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX services_combined_object_idx ON icinga_services USING btree (service_object_id, host_object_id);


--
-- Name: services_host_object_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX services_host_object_id_idx ON icinga_services USING btree (host_object_id);


--
-- Name: services_i_id_idx; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX services_i_id_idx ON icinga_services USING btree (instance_id);


--
-- Name: sgmbrs_sgid_soid; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX sgmbrs_sgid_soid ON icinga_servicegroup_members USING btree (servicegroup_id, service_object_id);


--
-- Name: sla_idx_obj; Type: INDEX; Schema: public; Owner: icinga; Tablespace: 
--

CREATE INDEX sla_idx_obj ON icinga_objects USING btree (objecttype_id, is_active, name1);


--
-- PostgreSQL database dump complete
--

