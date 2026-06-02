#include <stdlib.h>
unsigned int v1 (signed int, signed short, unsigned int);
unsigned int (*v2) (signed int, signed short, unsigned int) = v1;
extern void v3 (signed char, unsigned short, unsigned short);
extern void (*v4) (signed char, unsigned short, unsigned short);
void v5 (signed short, signed int, signed int, signed short);
void (*v6) (signed short, signed int, signed int, signed short) = v5;
unsigned short v7 (unsigned short, unsigned short, unsigned char);
unsigned short (*v8) (unsigned short, unsigned short, unsigned char) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (signed short, unsigned char, unsigned char, signed char);
extern unsigned char (*v18) (signed short, unsigned char, unsigned char, signed char);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern signed int v21 (signed int, signed int, signed char);
extern signed int (*v22) (signed int, signed int, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned short v25 (unsigned char, signed char, signed char);
extern unsigned short (*v26) (unsigned char, signed char, signed char);
unsigned char v27 (unsigned char, signed int);
unsigned char (*v28) (unsigned char, signed int) = v27;
static signed int v29 (void);
static signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 7;
unsigned int v81 = 3U;
signed int v80 = -4;

static signed int v29 (void)
{
{
for (;;) {
unsigned char v85 = 0;
signed int v84 = 0;
unsigned int v83 = 6U;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v86;
signed int v87;
v86 = v85 - v85;
v87 = v11 (v86);
history[history_index++] = (int)v87;
}
break;
case 11: 
return v84;
default: abort ();
}
}
}
}

unsigned char v27 (unsigned char v88, signed int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 7;
signed short v91 = -3;
signed short v90 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned char v95 = 5;
signed short v94 = -1;
unsigned short v93 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed int v96;
v96 = v29 ();
history[history_index++] = (int)v96;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v97, unsigned short v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 0U;
unsigned int v101 = 2U;
signed int v100 = -3;
trace++;
switch (trace)
{
case 5: 
return v97;
case 7: 
return v98;
case 9: 
return 0;
default: abort ();
}
}
}
}

void v5 (signed short v103, signed int v104, signed int v105, signed short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 5;
signed char v108 = 0;
signed int v107 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v110, signed short v111, unsigned int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = -1;
signed int v114 = -4;
signed char v113 = -2;
trace++;
switch (trace)
{
case 0: 
{
v15 ();
}
break;
case 14: 
return 4U;
default: abort ();
}
}
}
}
