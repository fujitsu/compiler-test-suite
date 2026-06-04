#include <stdlib.h>
static unsigned int v3 (unsigned short);
static unsigned int (*v4) (unsigned short) = v3;
extern signed char v5 (signed int, unsigned char, unsigned short, signed char);
extern signed char (*v6) (signed int, unsigned char, unsigned short, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (unsigned short, unsigned short, signed char, unsigned char);
extern void (*v12) (unsigned short, unsigned short, signed char, unsigned char);
extern void v13 (signed char, unsigned char);
extern void (*v14) (signed char, unsigned char);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned char v17 (unsigned char, unsigned int, signed short, signed char);
extern unsigned char (*v18) (unsigned char, unsigned int, signed short, signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed short v21 (signed int, unsigned int, unsigned char, signed char);
extern signed short (*v22) (signed int, unsigned int, unsigned char, signed char);
signed char v23 (unsigned short);
signed char (*v24) (unsigned short) = v23;
void v25 (signed short, signed int);
void (*v26) (signed short, signed int) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v42 = 2;
signed char v41 = -1;
unsigned int v40 = 3U;

void v25 (signed short v43, signed int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 7;
signed char v46 = -4;
signed char v45 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v48;
unsigned int v49;
v48 = 1 + 5;
v49 = v3 (v48);
history[history_index++] = (int)v49;
}
break;
case 4: 
{
unsigned short v50;
unsigned int v51;
v50 = 3 - 3;
v51 = v3 (v50);
history[history_index++] = (int)v51;
}
break;
case 6: 
{
unsigned short v52;
unsigned int v53;
v52 = v47 + 6;
v53 = v3 (v52);
history[history_index++] = (int)v53;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v23 (unsigned short v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -1;
unsigned char v56 = 0;
signed short v55 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v3 (unsigned short v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 0;
signed char v60 = 3;
signed char v59 = 0;
trace++;
switch (trace)
{
case 3: 
return 5U;
case 5: 
return 5U;
case 7: 
{
signed char v62;
unsigned char v63;
v62 = -2 + v60;
v63 = 5 + 3;
v13 (v62, v63);
}
break;
case 9: 
{
signed char v64;
unsigned char v65;
v64 = v59 - 1;
v65 = 2 - 1;
v13 (v64, v65);
}
break;
case 11: 
return 5U;
default: abort ();
}
}
}
}
