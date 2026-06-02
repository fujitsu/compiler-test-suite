#include <stdlib.h>
signed char v1 (unsigned short, signed short, unsigned short);
signed char (*v2) (unsigned short, signed short, unsigned short) = v1;
extern unsigned short v3 (unsigned char, unsigned char, signed char, signed short);
extern unsigned short (*v4) (unsigned char, unsigned char, signed char, signed short);
extern signed int v5 (signed short, unsigned char, unsigned char);
extern signed int (*v6) (signed short, unsigned char, unsigned char);
static unsigned int v7 (signed int, unsigned char, unsigned int);
static unsigned int (*v8) (signed int, unsigned char, unsigned int) = v7;
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed short v11 (signed char, signed char, signed int);
extern signed short (*v12) (signed char, signed char, signed int);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern signed char v19 (unsigned short, signed char);
extern signed char (*v20) (unsigned short, signed char);
extern signed char v21 (unsigned int, signed char, signed short);
extern signed char (*v22) (unsigned int, signed char, signed short);
void v23 (unsigned char, unsigned int, signed int, unsigned int);
void (*v24) (unsigned char, unsigned int, signed int, unsigned int) = v23;
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
void v27 (void);
void (*v28) (void) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v47 = 3;
unsigned short v46 = 5;
signed char v45 = 0;

void v27 (void)
{
{
for (;;) {
unsigned short v50 = 4;
signed char v49 = 0;
unsigned short v48 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned char v51, unsigned int v52, signed int v53, unsigned int v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 1U;
signed char v56 = 2;
signed short v55 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (signed int v58, unsigned char v59, unsigned int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = -1;
signed char v62 = 2;
unsigned int v61 = 4U;
trace++;
switch (trace)
{
case 1: 
{
signed char v64;
v64 = v29 ();
history[history_index++] = (int)v64;
}
break;
case 3: 
return v61;
default: abort ();
}
}
}
}

signed char v1 (unsigned short v65, signed short v66, unsigned short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -3;
unsigned int v69 = 7U;
unsigned short v68 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v71;
unsigned char v72;
unsigned int v73;
unsigned int v74;
v71 = v70 - v70;
v72 = 0 + 7;
v73 = v69 - v69;
v74 = v7 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 4: 
{
unsigned int v75;
signed char v76;
signed short v77;
signed char v78;
v75 = 0U - 1U;
v76 = -3 + 1;
v77 = v66 + 3;
v78 = v21 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 6: 
{
unsigned char v79;
v79 = 0 - 4;
v13 (v79);
}
break;
case 10: 
{
signed short v80;
signed int v81;
unsigned short v82;
v80 = v66 - -1;
v81 = v70 - 1;
v82 = v17 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
