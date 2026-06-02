#include <stdlib.h>
extern void v1 (signed int, unsigned short);
extern void (*v2) (signed int, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v9 (signed char, signed int, unsigned short);
extern unsigned char (*v10) (signed char, signed int, unsigned short);
extern unsigned int v11 (signed short, unsigned char, unsigned int);
extern unsigned int (*v12) (signed short, unsigned char, unsigned int);
signed int v13 (unsigned short);
signed int (*v14) (unsigned short) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed short v17 (signed int, signed short, signed short);
signed short (*v18) (signed int, signed short, signed short) = v17;
extern unsigned short v19 (unsigned short);
extern unsigned short (*v20) (unsigned short);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
static signed short v29 (void);
static signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v73 = 5;
unsigned int v72 = 6U;
unsigned short v71 = 2;

static signed short v29 (void)
{
{
for (;;) {
signed int v76 = -2;
signed char v75 = 2;
signed short v74 = 2;
trace++;
switch (trace)
{
case 7: 
return v74;
case 9: 
return 0;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed short v17 (signed int v77, signed short v78, signed short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 0;
signed char v81 = -4;
unsigned int v80 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 3;
signed char v85 = -2;
unsigned int v84 = 7U;
trace++;
switch (trace)
{
case 6: 
{
signed short v87;
v87 = v29 ();
history[history_index++] = (int)v87;
}
break;
case 8: 
{
signed short v88;
v88 = v29 ();
history[history_index++] = (int)v88;
}
break;
case 10: 
{
signed short v89;
v89 = v29 ();
history[history_index++] = (int)v89;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
