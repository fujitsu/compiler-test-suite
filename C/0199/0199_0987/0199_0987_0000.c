#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern signed char v5 (signed int, unsigned short, signed short);
extern signed char (*v6) (signed int, unsigned short, signed short);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
static unsigned int v9 (signed short, unsigned int, unsigned char, signed char);
static unsigned int (*v10) (signed short, unsigned int, unsigned char, signed char) = v9;
extern signed int v11 (signed char, signed int, signed int, unsigned short);
extern signed int (*v12) (signed char, signed int, signed int, unsigned short);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern signed short v19 (unsigned int, signed short, unsigned int);
extern signed short (*v20) (unsigned int, signed short, unsigned int);
extern unsigned char v21 (unsigned char, signed char, unsigned short, signed int);
extern unsigned char (*v22) (unsigned char, signed char, unsigned short, signed int);
extern signed char v23 (unsigned char, unsigned short, unsigned int);
extern signed char (*v24) (unsigned char, unsigned short, unsigned int);
unsigned int v25 (unsigned char, signed char, signed short, unsigned int);
unsigned int (*v26) (unsigned char, signed char, signed short, unsigned int) = v25;
extern void v27 (signed char, signed char, unsigned int);
extern void (*v28) (signed char, signed char, unsigned int);
extern void v29 (signed char, unsigned short);
extern void (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
signed short v32 = 3;
unsigned char v31 = 6;

unsigned int v25 (unsigned char v34, signed char v35, signed short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 4;
signed int v39 = -3;
signed short v38 = -2;
trace++;
switch (trace)
{
case 4: 
{
signed short v41;
unsigned int v42;
unsigned char v43;
signed char v44;
unsigned int v45;
v41 = v38 + 3;
v42 = 0U - v37;
v43 = 5 - v40;
v44 = 0 + 0;
v45 = v9 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 6: 
{
unsigned char v46;
unsigned short v47;
unsigned int v48;
signed char v49;
v46 = v34 - v40;
v47 = 3 - 2;
v48 = 6U + 7U;
v49 = v23 (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 14: 
return 3U;
case 16: 
return v37;
default: abort ();
}
}
}
}

static unsigned int v9 (signed short v50, unsigned int v51, unsigned char v52, signed char v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 1;
signed char v55 = -3;
unsigned int v54 = 6U;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v57;
signed char v58;
signed short v59;
unsigned int v60;
unsigned int v61;
v57 = v52 + v52;
v58 = v53 + v55;
v59 = -4 - 3;
v60 = v54 - v54;
v61 = v25 (v57, v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 15: 
return v54;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
unsigned short v64 = 1;
unsigned int v63 = 7U;
signed int v62 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v67;
v67 = v1 ();
history[history_index++] = (int)v67;
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
