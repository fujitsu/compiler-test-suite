#include <stdlib.h>
unsigned char v1 (unsigned short, unsigned char, signed int);
unsigned char (*v2) (unsigned short, unsigned char, signed int) = v1;
extern unsigned int v3 (signed short, signed int, unsigned char);
extern unsigned int (*v4) (signed short, signed int, unsigned char);
void v5 (void);
void (*v6) (void) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern signed int v11 (signed char, unsigned int);
extern signed int (*v12) (signed char, unsigned int);
extern signed short v13 (signed short, signed char, unsigned char);
extern signed short (*v14) (signed short, signed char, unsigned char);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned int v17 (signed char, unsigned char, signed short, signed int);
extern unsigned int (*v18) (signed char, unsigned char, signed short, signed int);
static unsigned char v19 (unsigned char, unsigned char, signed char);
static unsigned char (*v20) (unsigned char, unsigned char, signed char) = v19;
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern void v23 (signed int);
extern void (*v24) (signed int);
extern signed char v25 (signed int, signed char, signed short, unsigned short);
extern signed char (*v26) (signed int, signed char, signed short, unsigned short);
extern unsigned short v27 (unsigned char, signed short);
extern unsigned short (*v28) (unsigned char, signed short);
extern unsigned short v29 (signed char, signed short, unsigned char, unsigned short);
extern unsigned short (*v30) (signed char, signed short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = -4;
signed char v49 = -3;
signed short v48 = 0;

static unsigned char v19 (unsigned char v51, unsigned char v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = 0;
unsigned char v55 = 7;
signed short v54 = 1;
trace++;
switch (trace)
{
case 5: 
return v51;
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
unsigned int v59 = 0U;
unsigned char v58 = 4;
unsigned char v57 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v60, unsigned char v61, signed int v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 6;
signed short v64 = 2;
signed int v63 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed char v66;
signed short v67;
unsigned char v68;
unsigned short v69;
unsigned short v70;
v66 = 0 + -2;
v67 = -4 - 1;
v68 = v61 - v61;
v69 = v60 - 7;
v70 = v29 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 2: 
{
signed short v71;
signed int v72;
unsigned char v73;
unsigned int v74;
v71 = -2 + v64;
v72 = 2 - -3;
v73 = v61 + v61;
v74 = v3 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 4: 
{
unsigned char v75;
unsigned char v76;
signed char v77;
unsigned char v78;
v75 = v61 - v61;
v76 = 4 + 6;
v77 = -1 - 2;
v78 = v19 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 6: 
{
signed int v79;
v79 = v63 - -4;
v23 (v79);
}
break;
case 10: 
{
signed int v80;
v80 = v62 - v63;
v23 (v80);
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
