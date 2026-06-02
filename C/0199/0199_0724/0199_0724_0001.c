#include <stdlib.h>
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
void v9 (unsigned char);
void (*v10) (unsigned char) = v9;
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern void v13 (unsigned short, unsigned int, unsigned int);
extern void (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
void v17 (void);
void (*v18) (void) = v17;
extern void v19 (unsigned char, signed char, signed char);
extern void (*v20) (unsigned char, signed char, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
static signed short v25 (signed int, signed short);
static signed short (*v26) (signed int, signed short) = v25;
extern signed char v27 (unsigned int, unsigned short, unsigned short, signed char);
extern signed char (*v28) (unsigned int, unsigned short, unsigned short, signed char);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v52 = 0;
unsigned short v51 = 0;
signed char v50 = -2;

signed char v29 (void)
{
{
for (;;) {
unsigned short v55 = 4;
signed char v54 = 1;
signed char v53 = 0;
trace++;
switch (trace)
{
case 6: 
{
signed int v56;
signed short v57;
signed short v58;
v56 = 1 - -3;
v57 = 1 + -2;
v58 = v25 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 8: 
{
signed int v59;
signed short v60;
signed short v61;
v59 = 2 - 0;
v60 = -1 - -3;
v61 = v25 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 10: 
{
signed int v62;
signed short v63;
signed short v64;
v62 = 1 - 1;
v63 = 1 - 1;
v64 = v25 (v62, v63);
history[history_index++] = (int)v64;
}
break;
case 12: 
return v54;
default: abort ();
}
}
}
}

static signed short v25 (signed int v65, signed short v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 2U;
unsigned char v68 = 7;
unsigned int v67 = 2U;
trace++;
switch (trace)
{
case 7: 
return -1;
case 9: 
return -4;
case 11: 
return v66;
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
signed int v72 = -4;
signed int v71 = -2;
unsigned int v70 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 6;
unsigned short v75 = 0;
signed short v74 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
