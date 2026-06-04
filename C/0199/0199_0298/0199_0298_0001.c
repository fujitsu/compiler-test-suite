#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed int v3 (unsigned short, unsigned char, signed int, unsigned int);
extern signed int (*v4) (unsigned short, unsigned char, signed int, unsigned int);
extern signed int v5 (unsigned short, unsigned int, unsigned int);
extern signed int (*v6) (unsigned short, unsigned int, unsigned int);
extern signed char v7 (signed int);
extern signed char (*v8) (signed int);
void v9 (signed short, unsigned short);
void (*v10) (signed short, unsigned short) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (signed int, unsigned char);
extern unsigned short (*v14) (signed int, unsigned char);
extern unsigned int v15 (unsigned short, unsigned char);
extern unsigned int (*v16) (unsigned short, unsigned char);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern signed char v19 (unsigned short, unsigned char);
extern signed char (*v20) (unsigned short, unsigned char);
extern signed short v21 (signed short, unsigned int, unsigned char, signed short);
extern signed short (*v22) (signed short, unsigned int, unsigned char, signed short);
extern unsigned char v23 (signed short, unsigned int, signed int);
extern unsigned char (*v24) (signed short, unsigned int, signed int);
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern signed char v27 (signed char, unsigned char, signed short);
extern signed char (*v28) (signed char, unsigned char, signed short);
static unsigned int v29 (signed char);
static unsigned int (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v45 = 6;
signed int v44 = -3;
signed short v43 = -2;

static unsigned int v29 (signed char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 2;
signed char v48 = -3;
signed short v47 = -2;
trace++;
switch (trace)
{
case 5: 
return 2U;
default: abort ();
}
}
}
}

void v9 (signed short v50, unsigned short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 3;
signed int v53 = 3;
signed short v52 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
unsigned char v57 = 2;
unsigned char v56 = 5;
signed char v55 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v58;
signed char v59;
v58 = 0U - 6U;
v59 = v17 (v58);
history[history_index++] = (int)v59;
}
break;
case 2: 
return v57;
case 3: 
return v57;
case 4: 
{
signed char v60;
unsigned int v61;
v60 = -2 - v55;
v61 = v29 (v60);
history[history_index++] = (int)v61;
}
break;
case 6: 
{
signed int v62;
signed char v63;
v62 = -3 + 1;
v63 = v7 (v62);
history[history_index++] = (int)v63;
}
break;
case 12: 
return v57;
default: abort ();
}
}
}
}
