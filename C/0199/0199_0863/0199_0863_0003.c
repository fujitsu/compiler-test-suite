#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, unsigned int, unsigned char);
extern signed char (*v2) (signed int, unsigned int, unsigned int, unsigned char);
extern signed int v3 (unsigned char);
extern signed int (*v4) (unsigned char);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed int v9 (unsigned short, signed int, signed short, unsigned char);
extern signed int (*v10) (unsigned short, signed int, signed short, unsigned char);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern void v13 (signed int, signed int);
extern void (*v14) (signed int, signed int);
extern signed short v15 (unsigned short, unsigned short);
extern signed short (*v16) (unsigned short, unsigned short);
extern signed char v17 (void);
extern signed char (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed int v21 (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed int (*v22) (unsigned short, unsigned short, unsigned short, unsigned char);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern void v25 (unsigned short, unsigned short, signed short);
extern void (*v26) (unsigned short, unsigned short, signed short);
static signed char v27 (unsigned int);
static signed char (*v28) (unsigned int) = v27;
extern signed int v29 (unsigned short, unsigned short);
extern signed int (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = -1;
unsigned int v103 = 1U;
signed short v102 = -3;

static signed char v27 (unsigned int v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -2;
signed short v107 = 3;
signed short v106 = 3;
trace++;
switch (trace)
{
case 8: 
return v108;
case 10: 
return -4;
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed int v111 = -2;
signed short v110 = -1;
signed char v109 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned char v114 = 7;
unsigned int v113 = 5U;
signed short v112 = 3;
trace++;
switch (trace)
{
case 4: 
return 3;
case 7: 
{
unsigned int v115;
signed char v116;
v115 = 6U - 0U;
v116 = v27 (v115);
history[history_index++] = (int)v116;
}
break;
case 9: 
{
unsigned int v117;
signed char v118;
v117 = 3U + v113;
v118 = v27 (v117);
history[history_index++] = (int)v118;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}
