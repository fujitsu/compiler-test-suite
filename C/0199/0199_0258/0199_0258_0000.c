#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (unsigned short, unsigned char, signed char, unsigned short);
static unsigned char (*v2) (unsigned short, unsigned char, signed char, unsigned short) = v1;
extern void v3 (signed short, signed int, signed short, signed int);
extern void (*v4) (signed short, signed int, signed short, signed int);
extern void v5 (signed int, signed int, unsigned short);
extern void (*v6) (signed int, signed int, unsigned short);
extern signed short v7 (unsigned int, unsigned char, unsigned short);
extern signed short (*v8) (unsigned int, unsigned char, unsigned short);
extern unsigned short v9 (unsigned int, signed char);
extern unsigned short (*v10) (unsigned int, signed char);
static unsigned short v11 (unsigned int, signed short, signed short, unsigned char);
static unsigned short (*v12) (unsigned int, signed short, signed short, unsigned char) = v11;
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned char v15 (signed short, unsigned char, unsigned int);
extern unsigned char (*v16) (signed short, unsigned char, unsigned int);
extern signed short v17 (signed int, signed char, unsigned char, signed short);
extern signed short (*v18) (signed int, signed char, unsigned char, signed short);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern unsigned char v27 (unsigned char, unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, unsigned char, signed char);
extern signed int v29 (unsigned char, unsigned int, unsigned int);
extern signed int (*v30) (unsigned char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
unsigned short v32 = 7;
signed char v31 = 3;

unsigned short v25 (void)
{
{
for (;;) {
signed short v36 = 3;
signed int v35 = 0;
signed int v34 = 2;
trace++;
switch (trace)
{
case 9: 
return 0;
case 11: 
return 4;
default: abort ();
}
}
}
}

static unsigned short v11 (unsigned int v37, signed short v38, signed short v39, unsigned char v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -3;
signed short v42 = -3;
unsigned short v41 = 5;
trace++;
switch (trace)
{
case 5: 
return v41;
default: abort ();
}
}
}
}

static unsigned char v1 (unsigned short v44, unsigned char v45, signed char v46, unsigned short v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 1U;
unsigned short v49 = 3;
signed char v48 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v51;
signed int v52;
signed short v53;
signed int v54;
v51 = -1 + 1;
v52 = 1 + -2;
v53 = -3 - 0;
v54 = -3 - -2;
v3 (v51, v52, v53, v54);
}
break;
case 4: 
{
unsigned int v55;
signed short v56;
signed short v57;
unsigned char v58;
unsigned short v59;
v55 = v50 + 3U;
v56 = -2 - 0;
v57 = -2 - -4;
v58 = v45 - v45;
v59 = v11 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 6: 
{
signed short v60;
signed int v61;
signed short v62;
signed int v63;
v60 = 3 - -2;
v61 = 3 + -1;
v62 = -4 - 1;
v63 = 2 + 1;
v3 (v60, v61, v62, v63);
}
break;
case 14: 
return v45;
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
unsigned short v66;
unsigned char v67;
signed char v68;
unsigned short v69;
unsigned char v70;
v66 = v32 + v33;
v67 = 2 + 1;
v68 = 3 + v31;
v69 = v32 + v33;
v70 = v1 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
