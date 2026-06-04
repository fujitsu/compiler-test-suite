#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
unsigned short v7 (signed char, signed int, unsigned char, unsigned short);
unsigned short (*v8) (signed char, signed int, unsigned char, unsigned short) = v7;
extern signed int v9 (unsigned int);
extern signed int (*v10) (unsigned int);
signed short v11 (void);
signed short (*v12) (void) = v11;
signed short v13 (void);
signed short (*v14) (void) = v13;
extern signed int v17 (void);
extern signed int (*v18) (void);
signed int v19 (unsigned short, unsigned char);
signed int (*v20) (unsigned short, unsigned char) = v19;
extern signed int v21 (unsigned int, signed short);
extern signed int (*v22) (unsigned int, signed short);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern unsigned int v25 (unsigned char, signed char);
extern unsigned int (*v26) (unsigned char, signed char);
extern signed short v27 (unsigned short, unsigned short);
extern signed short (*v28) (unsigned short, unsigned short);
static unsigned char v29 (void);
static unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v57 = 2;
signed int v56 = -4;
signed short v55 = -1;

static unsigned char v29 (void)
{
{
for (;;) {
unsigned int v60 = 5U;
unsigned char v59 = 1;
unsigned char v58 = 5;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v61;
signed int v62;
v61 = 0U + 1U;
v62 = v9 (v61);
history[history_index++] = (int)v62;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}

signed int v19 (unsigned short v63, unsigned char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 5;
signed short v66 = -3;
signed short v65 = 0;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v68;
v68 = v29 ();
history[history_index++] = (int)v68;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed char v71 = -4;
signed char v70 = 3;
signed char v69 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed short v74 = -4;
signed char v73 = -1;
unsigned char v72 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v75, signed int v76, unsigned char v77, unsigned short v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 3;
signed short v80 = -4;
unsigned char v79 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
