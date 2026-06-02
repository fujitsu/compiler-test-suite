#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned int, unsigned char);
extern unsigned int (*v2) (signed short, unsigned int, unsigned char);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned char v5 (signed int, signed short, unsigned int, unsigned char);
extern unsigned char (*v6) (signed int, signed short, unsigned int, unsigned char);
extern void v7 (signed short);
extern void (*v8) (signed short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (unsigned char, unsigned int);
extern signed short (*v12) (unsigned char, unsigned int);
extern signed int v13 (unsigned char, signed short, signed short);
extern signed int (*v14) (unsigned char, signed short, signed short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern unsigned short v19 (signed int, unsigned char, signed char);
extern unsigned short (*v20) (signed int, unsigned char, signed char);
signed short v21 (signed short, signed char);
signed short (*v22) (signed short, signed char) = v21;
static signed char v23 (unsigned short);
static signed char (*v24) (unsigned short) = v23;
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v61 = 2;
signed short v60 = -4;
unsigned int v59 = 0U;

static signed char v23 (unsigned short v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = -4;
signed int v64 = 2;
signed int v63 = -3;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v66;
signed char v67;
v66 = 3 - 7;
v67 = v25 (v66);
history[history_index++] = (int)v67;
}
break;
case 6: 
{
unsigned char v68;
signed char v69;
v68 = 6 - 6;
v69 = v25 (v68);
history[history_index++] = (int)v69;
}
break;
case 8: 
return 2;
default: abort ();
}
}
}
}

signed short v21 (signed short v70, signed char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 2;
unsigned short v73 = 1;
signed int v72 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed char v77 = 1;
signed char v76 = 1;
signed int v75 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v78;
signed char v79;
v78 = 1 - 4;
v79 = v23 (v78);
history[history_index++] = (int)v79;
}
break;
case 9: 
{
signed int v80;
unsigned char v81;
signed char v82;
unsigned short v83;
v80 = v75 - -2;
v81 = 6 - 3;
v82 = 0 + v76;
v83 = v19 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 11: 
return 0U;
default: abort ();
}
}
}
}
