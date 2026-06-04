#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned int);
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned int v19 (signed short, signed char);
extern unsigned int (*v20) (signed short, signed char);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern unsigned char v23 (signed short, signed short);
extern unsigned char (*v24) (signed short, signed short);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern void v27 (unsigned short, signed int, unsigned int, signed int);
extern void (*v28) (unsigned short, signed int, unsigned int, signed int);
static signed int v29 (signed char);
static signed int (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v86 = 3;
unsigned int v85 = 2U;
signed char v84 = -3;

static signed int v29 (signed char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 3;
signed short v89 = 3;
unsigned int v88 = 4U;
trace++;
switch (trace)
{
case 10: 
return v90;
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
signed int v93 = -1;
signed char v92 = 1;
unsigned short v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
unsigned char v96 = 1;
signed char v95 = 0;
signed int v94 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned char v99 = 2;
signed short v98 = -4;
signed short v97 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v100;
unsigned int v101;
v100 = 6 + 1;
v101 = v15 (v100);
history[history_index++] = (int)v101;
}
break;
case 4: 
{
signed int v102;
v102 = v3 ();
history[history_index++] = (int)v102;
}
break;
case 6: 
return v97;
case 7: 
{
signed int v103;
signed short v104;
v103 = 0 - -1;
v104 = v5 (v103);
history[history_index++] = (int)v104;
}
break;
case 9: 
{
signed char v105;
signed int v106;
v105 = 0 - -2;
v106 = v29 (v105);
history[history_index++] = (int)v106;
}
break;
case 11: 
return v98;
default: abort ();
}
}
}
}
