#include <stdlib.h>
unsigned char v1 (signed char, unsigned short, signed int);
unsigned char (*v2) (signed char, unsigned short, signed int) = v1;
extern signed char v3 (unsigned short, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int);
extern void v5 (signed int, unsigned char, signed short, unsigned char);
extern void (*v6) (signed int, unsigned char, signed short, unsigned char);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern unsigned short v9 (unsigned char, unsigned char);
extern unsigned short (*v10) (unsigned char, unsigned char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v14) (signed short, signed int, unsigned char, signed int);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern unsigned int v17 (unsigned int, signed short, signed char, signed short);
extern unsigned int (*v18) (unsigned int, signed short, signed char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed short v23 (signed short, unsigned short);
extern signed short (*v24) (signed short, unsigned short);
extern void v25 (void);
extern void (*v26) (void);
static signed int v27 (void);
static signed int (*v28) (void) = v27;
extern unsigned short v29 (signed int, signed short, unsigned char, signed int);
extern unsigned short (*v30) (signed int, signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v96 = 3;
signed int v95 = 2;
signed short v94 = 0;

static signed int v27 (void)
{
{
for (;;) {
signed short v99 = -1;
unsigned int v98 = 0U;
signed int v97 = 0;
trace++;
switch (trace)
{
case 5: 
return v97;
default: abort ();
}
}
}
}

unsigned char v1 (signed char v100, unsigned short v101, signed int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 7U;
signed char v104 = -3;
unsigned char v103 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v106;
signed short v107;
unsigned char v108;
signed int v109;
unsigned short v110;
v106 = 2 + v102;
v107 = 2 - 1;
v108 = v103 - v103;
v109 = -1 - v102;
v110 = v29 (v106, v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 2: 
{
signed int v111;
signed short v112;
unsigned char v113;
signed int v114;
unsigned short v115;
v111 = 2 - 3;
v112 = 0 - -1;
v113 = v103 + 6;
v114 = -1 - 1;
v115 = v29 (v111, v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 4: 
{
signed int v116;
v116 = v27 ();
history[history_index++] = (int)v116;
}
break;
case 6: 
{
unsigned char v117;
unsigned char v118;
unsigned short v119;
v117 = 4 - v103;
v118 = 4 + v103;
v119 = v9 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 8: 
{
v25 ();
}
break;
case 10: 
{
v25 ();
}
break;
case 12: 
return v103;
default: abort ();
}
}
}
}
