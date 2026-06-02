#include <stdlib.h>
signed char v1 (signed char);
signed char (*v2) (signed char) = v1;
static signed short v3 (void);
static signed short (*v4) (void) = v3;
unsigned char v5 (signed char, unsigned int, unsigned int, unsigned short);
unsigned char (*v6) (signed char, unsigned int, unsigned int, unsigned short) = v5;
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern void v9 (signed int, signed int, unsigned int, signed int);
extern void (*v10) (signed int, signed int, unsigned int, signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned char, unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned int, signed char);
extern signed char (*v16) (signed int, unsigned int, unsigned int, signed char);
extern unsigned int v17 (signed short, unsigned int, signed char, unsigned int);
extern unsigned int (*v18) (signed short, unsigned int, signed char, unsigned int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed char v23 (signed char, signed char, signed int);
extern signed char (*v24) (signed char, signed char, signed int);
extern signed char v25 (signed int, signed char);
extern signed char (*v26) (signed int, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (unsigned char, unsigned char);
extern void (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v51 = 6U;
signed short v50 = 2;
unsigned int v49 = 7U;

unsigned char v5 (signed char v52, unsigned int v53, unsigned int v54, unsigned short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 1U;
signed short v57 = -3;
unsigned short v56 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v3 (void)
{
{
for (;;) {
signed int v61 = -4;
signed char v60 = 2;
unsigned char v59 = 2;
trace++;
switch (trace)
{
case 7: 
{
signed int v62;
signed int v63;
unsigned int v64;
signed int v65;
v62 = v61 - v61;
v63 = v61 - 3;
v64 = 7U - 2U;
v65 = 2 - v61;
v9 (v62, v63, v64, v65);
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed char v1 (signed char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 4;
signed short v68 = 3;
signed short v67 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v70;
unsigned int v71;
unsigned int v72;
signed char v73;
signed char v74;
v70 = 3 + 3;
v71 = 2U + 1U;
v72 = 5U + 3U;
v73 = -1 - 1;
v74 = v15 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 2: 
{
unsigned char v75;
unsigned char v76;
v75 = 1 + 6;
v76 = 5 + 3;
v29 (v75, v76);
}
break;
case 4: 
{
signed char v77;
v77 = v11 ();
history[history_index++] = (int)v77;
}
break;
case 6: 
{
signed short v78;
v78 = v3 ();
history[history_index++] = (int)v78;
}
break;
case 14: 
return v66;
default: abort ();
}
}
}
}
