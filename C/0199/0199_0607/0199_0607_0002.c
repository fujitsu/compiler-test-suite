#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed char v3 (unsigned int, signed short);
extern signed char (*v4) (unsigned int, signed short);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (unsigned short, unsigned int, signed short);
extern signed char (*v12) (unsigned short, unsigned int, signed short);
extern void v13 (signed short, signed int, signed int, signed char);
extern void (*v14) (signed short, signed int, signed int, signed char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed char v17 (signed short, signed short, signed int, signed int);
extern signed char (*v18) (signed short, signed short, signed int, signed int);
unsigned char v19 (unsigned short, unsigned char, unsigned int, signed char);
unsigned char (*v20) (unsigned short, unsigned char, unsigned int, signed char) = v19;
unsigned short v23 (signed int);
unsigned short (*v24) (signed int) = v23;
extern signed char v25 (signed char, signed short, unsigned char, signed int);
extern signed char (*v26) (signed char, signed short, unsigned char, signed int);
static signed short v27 (signed short, unsigned char);
static signed short (*v28) (signed short, unsigned char) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v67 = 4;
signed char v66 = -2;
unsigned char v65 = 6;

static signed short v27 (signed short v68, unsigned char v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 1U;
unsigned short v71 = 6;
signed char v70 = -3;
trace++;
switch (trace)
{
case 5: 
return -4;
case 7: 
return v68;
case 9: 
return v68;
default: abort ();
}
}
}
}

unsigned short v23 (signed int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 1;
unsigned int v75 = 7U;
signed char v74 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed int v77;
v77 = v29 ();
history[history_index++] = (int)v77;
}
break;
case 4: 
{
signed short v78;
unsigned char v79;
signed short v80;
v78 = -2 + -4;
v79 = v76 + 4;
v80 = v27 (v78, v79);
history[history_index++] = (int)v80;
}
break;
case 6: 
{
signed short v81;
unsigned char v82;
signed short v83;
v81 = 3 + 1;
v82 = v76 - v76;
v83 = v27 (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 8: 
{
signed short v84;
unsigned char v85;
signed short v86;
v84 = 3 + 0;
v85 = v76 - v76;
v86 = v27 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v87, unsigned char v88, unsigned int v89, signed char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 4;
signed char v92 = 1;
unsigned short v91 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
