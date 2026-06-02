#include <stdlib.h>
signed short v1 (unsigned char);
signed short (*v2) (unsigned char) = v1;
extern void v3 (signed short);
extern void (*v4) (signed short);
static unsigned int v5 (unsigned int);
static unsigned int (*v6) (unsigned int) = v5;
extern unsigned short v7 (unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned char, unsigned int);
static signed short v9 (signed short, signed short, signed short);
static signed short (*v10) (signed short, signed short, signed short) = v9;
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern unsigned int v19 (signed short, unsigned short, unsigned int, signed char);
extern unsigned int (*v20) (signed short, unsigned short, unsigned int, signed char);
extern signed char v21 (signed char, unsigned int);
extern signed char (*v22) (signed char, unsigned int);
static signed int v23 (void);
static signed int (*v24) (void) = v23;
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
signed char v27 (unsigned short, signed char);
signed char (*v28) (unsigned short, signed char) = v27;
extern unsigned short v29 (unsigned int, unsigned short, unsigned short);
extern unsigned short (*v30) (unsigned int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v69 = 6U;
unsigned char v68 = 3;
signed char v67 = 0;

signed char v27 (unsigned short v70, signed char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -3;
signed int v73 = -1;
unsigned short v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v23 (void)
{
{
for (;;) {
signed int v77 = 1;
signed short v76 = -4;
signed short v75 = -3;
trace++;
switch (trace)
{
case 3: 
return v77;
case 5: 
return v77;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed short v80 = -3;
signed int v79 = -4;
signed char v78 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed int v81;
v81 = v23 ();
history[history_index++] = (int)v81;
}
break;
case 4: 
{
signed int v82;
v82 = v23 ();
history[history_index++] = (int)v82;
}
break;
case 6: 
return 2U;
default: abort ();
}
}
}
}

static signed short v9 (signed short v83, signed short v84, signed short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 7;
unsigned int v87 = 2U;
signed short v86 = -1;
trace++;
switch (trace)
{
case 9: 
return v86;
default: abort ();
}
}
}
}

static unsigned int v5 (unsigned int v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 6;
signed char v91 = 1;
signed short v90 = -2;
trace++;
switch (trace)
{
case 11: 
return v89;
default: abort ();
}
}
}
}

signed short v1 (unsigned char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 1;
signed short v95 = -2;
signed short v94 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed short v97;
v97 = v95 - v95;
v3 (v97);
}
break;
case 8: 
{
signed short v98;
signed short v99;
signed short v100;
signed short v101;
v98 = -1 - v95;
v99 = -3 + v95;
v100 = v94 + v95;
v101 = v9 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 10: 
{
unsigned int v102;
unsigned int v103;
v102 = 6U - 5U;
v103 = v5 (v102);
history[history_index++] = (int)v103;
}
break;
case 12: 
return v95;
default: abort ();
}
}
}
}
