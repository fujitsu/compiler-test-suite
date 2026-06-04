#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed char);
static signed short (*v2) (signed char) = v1;
static unsigned int v3 (unsigned short, signed char);
static unsigned int (*v4) (unsigned short, signed char) = v3;
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (signed char, unsigned short);
extern signed int (*v10) (signed char, unsigned short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed int, unsigned int, unsigned char, unsigned int);
extern void (*v14) (signed int, unsigned int, unsigned char, unsigned int);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed char, unsigned char, unsigned char);
extern unsigned char (*v22) (signed char, unsigned char, unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (signed char, signed int);
extern signed char (*v26) (signed char, signed int);
unsigned short v27 (unsigned int);
unsigned short (*v28) (unsigned int) = v27;
extern unsigned int v29 (signed short, signed char, unsigned char, signed short);
extern unsigned int (*v30) (signed short, signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned short v32 = 1;
signed int v31 = 0;

unsigned short v27 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 1;
unsigned short v36 = 4;
unsigned int v35 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v3 (unsigned short v38, signed char v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 3;
unsigned int v41 = 1U;
unsigned short v40 = 4;
trace++;
switch (trace)
{
case 7: 
{
signed char v43;
signed short v44;
v43 = v39 + 3;
v44 = v1 (v43);
history[history_index++] = (int)v44;
}
break;
case 13: 
return v41;
default: abort ();
}
}
}
}

static signed short v1 (signed char v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
signed int v48 = -2;
signed int v47 = 0;
unsigned int v46 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v49;
unsigned int v50;
v49 = 0 + 3;
v50 = v5 (v49);
history[history_index++] = (int)v50;
}
break;
case 4: 
{
unsigned char v51;
v51 = v17 ();
history[history_index++] = (int)v51;
}
break;
case 6: 
{
unsigned short v52;
signed char v53;
unsigned int v54;
v52 = 3 - 3;
v53 = -4 + v45;
v54 = v3 (v52, v53);
history[history_index++] = (int)v54;
}
break;
case 8: 
{
signed char v55;
unsigned short v56;
signed int v57;
v55 = v45 + v45;
v56 = 7 + 6;
v57 = v9 (v55, v56);
history[history_index++] = (int)v57;
}
break;
case 10: 
{
unsigned short v58;
unsigned int v59;
v58 = 4 - 6;
v59 = v5 (v58);
history[history_index++] = (int)v59;
}
break;
case 12: 
return -1;
case 14: 
return -3;
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
signed char v62;
signed short v63;
v62 = 0 + 1;
v63 = v1 (v62);
history[history_index++] = (int)v63;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
