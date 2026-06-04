#include <stdlib.h>
extern unsigned char v1 (signed char, signed char, signed int);
extern unsigned char (*v2) (signed char, signed char, signed int);
extern signed short v3 (unsigned int, unsigned short, signed int);
extern signed short (*v4) (unsigned int, unsigned short, signed int);
extern unsigned int v5 (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v6) (signed char, unsigned short, unsigned int, unsigned int);
extern void v7 (unsigned char, signed short);
extern void (*v8) (unsigned char, signed short);
unsigned int v9 (unsigned char, signed int, signed int, signed short);
unsigned int (*v10) (unsigned char, signed int, signed int, signed short) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed short v17 (signed int);
extern signed short (*v18) (signed int);
unsigned int v19 (signed short, unsigned char, signed short);
unsigned int (*v20) (signed short, unsigned char, signed short) = v19;
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
static signed char v23 (signed int);
static signed char (*v24) (signed int) = v23;
signed char v25 (void);
signed char (*v26) (void) = v25;
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v42 = 5;
signed int v41 = 3;
unsigned char v40 = 6;

signed char v25 (void)
{
{
for (;;) {
unsigned char v45 = 6;
signed char v44 = -3;
unsigned int v43 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v23 (signed int v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 1U;
signed char v48 = -3;
unsigned short v47 = 5;
trace++;
switch (trace)
{
case 2: 
return 2;
case 4: 
return v48;
case 10: 
return v48;
default: abort ();
}
}
}
}

unsigned int v19 (signed short v50, unsigned char v51, signed short v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = 1;
unsigned char v54 = 3;
unsigned short v53 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned char v58 = 7;
unsigned short v57 = 1;
signed int v56 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v59, signed int v60, signed int v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 2;
signed short v64 = -4;
unsigned int v63 = 6U;
trace++;
switch (trace)
{
case 1: 
{
signed int v66;
signed char v67;
v66 = -3 - v61;
v67 = v23 (v66);
history[history_index++] = (int)v67;
}
break;
case 3: 
{
signed int v68;
signed char v69;
v68 = v61 + v61;
v69 = v23 (v68);
history[history_index++] = (int)v69;
}
break;
case 5: 
{
signed char v70;
signed int v71;
v70 = -4 - -2;
v71 = v13 (v70);
history[history_index++] = (int)v71;
}
break;
case 7: 
{
signed char v72;
signed int v73;
v72 = -1 + -2;
v73 = v13 (v72);
history[history_index++] = (int)v73;
}
break;
case 9: 
{
signed int v74;
signed char v75;
v74 = v61 - v60;
v75 = v23 (v74);
history[history_index++] = (int)v75;
}
break;
case 11: 
return v63;
default: abort ();
}
}
}
}
